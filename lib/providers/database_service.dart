import 'dart:io';
import 'package:margretheskaal/models/category.dart';
import 'package:margretheskaal/models/category_item.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

final String categoriesTable = 'Categories';
final String categoriesId = 'Id';
final String categoriesTitle = 'Title';
final String categoriesImageUrl = 'ImageUrl';

final String categoryItemsTable = 'CategoryItems';
final String categoryItemsId = 'Id';
final String categoryItemsText = 'Text';
final String categoryItemsCategoryId = 'CategoryId';

class DatabaseService {
  static final _databaseName = 'MargretheSkaalDatabase.db';
  static final _databaseVersion = 1;

  static final DatabaseService _instance = DatabaseService._internal();

  Future<Database> database;

  factory DatabaseService() {
    return _instance;
  }

  DatabaseService._internal() {
    initDatabase();
  }

  initDatabase() async {
    database = openDatabase(
      join(await getDatabasesPath(), _databaseName),
      // When the database is first created, create a table to store data.
      onCreate: (db, version) {
        db.execute('''
              CREATE TABLE $categoriesTable (
                $categoriesId INTEGER PRIMARY KEY,
                $categoriesTitle TEXT NOT NULL,
                $categoriesImageUrl TEXT NOT NULL
              )
              ''');
        db.execute('''
              CREATE TABLE $categoryItemsTable (
                $categoryItemsId INTEGER PRIMARY KEY,
                $categoryItemsText TEXT NOT NULL,
                $categoryItemsCategoryId INTEGER NOT NULL
              )
              ''');
      },
      // Set the version. This executes the onCreate function and provides a
      // path to perform database upgrades and downgrades.
      version: _databaseVersion,
    );
  }

  Future<int> updateCategory(Category category) async {
    var db = await database;
    var updateCount = await db.update(
      categoriesTable,
      category.toMap(),
      where: '$categoriesId = ${category.id}'
    );
    var existingCategoryItems = await getCategoryItemsByCategoryId(category.id);
    List<int> categoryItemsIds = [];
    category.items.forEach((ci) { categoryItemsIds.add(ci.id); });
    List<int> categoryItemIdsToDelete = [];
    for(var i = 0; i < existingCategoryItems.length; i++) {
      if(!categoryItemsIds.contains(existingCategoryItems[i].id)) {
        categoryItemIdsToDelete.add(existingCategoryItems[i].id);
      }
    }
    if(categoryItemIdsToDelete.length > 0) {
      await deleteCategoryItems(categoryItemIdsToDelete);
    }

    for(var i = 0; i < category.items.length; i++) {
      if(category.items[i].id == null) {
        category.items[i].categoryId = category.id;
        await insertCategoryItem(category.items[i]);
      }
    }
    return updateCount;
  }

  Future<int> insertCategory(Category category) async {
    var db = await database;
    var id = await db.insert(categoriesTable, category.toMap());
    print(id);
    if (category.items.length > 0) {
      for (var i = 0; i < category.items.length; i++) {
        category.items[i].categoryId = id;
        await insertCategoryItem(category.items[i]);
      }
    }
    return id;
  }

  Future<int> insertCategoryItem(CategoryItem cateogryItem) async {
    var db = await database;
    var id = await db.insert(categoryItemsTable, cateogryItem.toMap());
    return id;
  }

  Future<List<Map<String, dynamic>>> getCategoryItemsMapByCategoryId(int categoryId) async {
    var db = await database;
    List<Map> maps = await db.query(categoryItemsTable,
        columns: [categoryItemsId, categoryItemsText, categoryItemsCategoryId],
        where: '$categoryItemsCategoryId = $categoryId');
    return maps;
  }

  Future<List<CategoryItem>> getCategoryItemsByCategoryId(int categoryId) async {
    var categoryItemsMaps = await getCategoryItemsMapByCategoryId(categoryId);
    var categoryItemList = List<CategoryItem>();
    for (var i = 0; i < categoryItemsMaps.length; i++) {
      var categoryItem = CategoryItem.fromMap(categoryItemsMaps[i]);
      if(categoryItem.categoryId == categoryId) {
        categoryItemList.add(categoryItem);
      }
    }
    return categoryItemList;
  }

  Future<List<Map<String, dynamic>>> getCategoryMapById(int id) async {
    var db = await database;
    List<Map> maps = await db.query(categoriesTable,
        columns: [categoriesId, categoriesTitle, categoriesImageUrl],
        where: '$categoriesId = $id');
    return maps;
  }

  Future<Category> getCategoryById(int id) async {
    var categoryMaps = await getCategoryMapById(id);
    var category = Category.fromMap(categoryMaps[0]);
    var categoryItems = await getCategoryItemsByCategoryId(category.id);
    category.items = categoryItems;
    print(category.title);
    return category;
  }

  Future<List<Map<String, dynamic>>> getCategoriesMap() async {
    var db = await database;
    List<Map> maps = await db.query(
      categoriesTable,
      columns: [categoriesId, categoriesTitle, categoriesImageUrl],
    );
    return maps;
  }

  Future<List<Category>> getCategories() async {
    var categoryMaps = await getCategoriesMap();
    var categoryItems = await getCategoryItems();
    var categoryList = List<Category>();
    for (var i = 0; i < categoryMaps.length; i++) {
      categoryList.add(Category.fromMap(categoryMaps[i]));
      categoryList[i].items = categoryItems
          .where((ci) => ci.categoryId == categoryList[i].id)
          .toList();
    }
    return categoryList;
  }

  Future<List<Map<String, dynamic>>> getCategoryItemsMap() async {
    var db = await database;
    List<Map> maps = await db.query(
      categoryItemsTable,
      columns: [categoryItemsId, categoryItemsText, categoryItemsCategoryId],
    );
    return maps;
  }

  Future<List<CategoryItem>> getCategoryItems() async {
    var categoryItemsMaps = await getCategoryItemsMap();
    var categoryItemList = List<CategoryItem>();
    for (var i = 0; i < categoryItemsMaps.length; i++) {
      categoryItemList.add(CategoryItem.fromMap(categoryItemsMaps[i]));
    }
    return categoryItemList;
  }

  Future<int> deleteCategoryItem(int id) async {
    var db = await database;
    var result = await db.rawDelete(
        'DELETE FROM $categoryItemsTable WHERE $categoryItemsId = $id');
    return result;
  }

  Future<int> deleteCategoryItems(List<int> ids) async {
    var db = await database;
    String idsSql = '(';
    for(var i = 0; i < ids.length; i++) {
      idsSql += ids[i].toString();
      if(i != ids.length - 1) {
        idsSql += ', ';
      }
    }
    idsSql += ')';
    print(idsSql);
    var result = await db.rawDelete(
        'DELETE FROM $categoryItemsTable WHERE $categoryItemsId in $idsSql');
    return result;
  }

  Future<int> deleteCategory(int id) async {
    var db = await database;
    var result = await db.rawDelete(
        'DELETE FROM $categoryItemsTable WHERE $categoryItemsCategoryId = $id');
    result += await db
        .rawDelete('DELETE FROM $categoriesTable WHERE $categoriesId = $id');
    return result;
  }
}
