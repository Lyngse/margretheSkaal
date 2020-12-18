import 'package:flutter/material.dart';
import 'package:margretheskaal/providers/database_service.dart';
import 'package:margretheskaal/providers/standard_categories_data.dart';

import '../models/category.dart';
import '../models/category_item.dart';

class Categories with ChangeNotifier {
  List<Category> _customCategories = [];
  List<Category> _standardCategories = STANDARD_CATEGORIES;
  DatabaseService dbService = DatabaseService();

  List<Category> get getStandardCategories {
    return [..._standardCategories];
  }

  List<Category> get getCustomCategories {
    return [..._customCategories];
  }

  Category getStandardCategoryById(int id) {
    return _standardCategories.firstWhere((category) => category.id == id);
  }

  Category getCustomCategoryById(int id) {
    return _customCategories.firstWhere((category) => category.id == id);
  }

  Future<void> getAndSetCustomCategories() async {
    await dbService.getCategories().then((result) {
      _customCategories = result;
      notifyListeners();
    });
  }

  Future<void> addCustomCategory(Category category) async {
    await dbService.insertCategory(category).then((result) {
      getAndSetCustomCategories();
    });
  }

  Future<void> deleteCustomCategory(int categoryId) async {
    await dbService.deleteCategory(categoryId).then((result) {
      getAndSetCustomCategories();
    });
  }

  Future<void> updateCustomCategory(Category category) async {
    await dbService.updateCategory(category).then((result) {
      getAndSetCustomCategories();
    });
  }
}