import 'package:flutter/material.dart';
import 'package:margretheskaal/models/category.dart';
import 'package:margretheskaal/models/category_item.dart';
import 'package:margretheskaal/providers/categories.dart';
import 'package:margretheskaal/widgets/custom_category_item_list_tile.dart';
import 'package:provider/provider.dart';

class EditCustomCategoryScreen extends StatefulWidget {
  static const routeName = '/edit-custom-category';
  int parsedCategoryId;

  EditCustomCategoryScreen({this.parsedCategoryId});

  @override
  _EditCustomCategoryScreenState createState() =>
      _EditCustomCategoryScreenState();
}

class _EditCustomCategoryScreenState extends State<EditCustomCategoryScreen> {
  final _form = GlobalKey<FormState>();
  final _categoryNameTextController = TextEditingController();
  final _categoryItemForm = GlobalKey<FormState>();
  final _categoryItemTextController = TextEditingController();
  final _categoryItemFocusNode = FocusNode();
  var _isInit = true;

  var _editedCategory = Category(id: null, title: '', imageUrl: '', items: []);

  void _setEditedCategory(categoryId) async {
    _editedCategory = Provider.of<Categories>(context, listen: false)
        .getCustomCategoryById(categoryId);
    _categoryNameTextController.text = _editedCategory.title;
    setState(() {});
  }

  void _updateCategory() async {
    Provider.of<Categories>(context, listen: false)
        .updateCustomCategory(_editedCategory);
  }

  void _createCategory() async {
    Provider.of<Categories>(context, listen: false)
        .addCustomCategory(_editedCategory);
  }

  @override
  void dispose() {
    _categoryNameTextController.dispose();
    _categoryItemTextController.dispose();
    _categoryItemFocusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _isInit = true;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_isInit) {
      final categoryId = ModalRoute.of(context).settings.arguments as int;
      if (categoryId != null) {
        _setEditedCategory(categoryId);
      } else if (widget.parsedCategoryId != null &&
          widget.parsedCategoryId > 0) {
        _setEditedCategory(widget.parsedCategoryId);
      } else {
        _categoryNameTextController.clear();
      }
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  void _saveForm() {
    final isValid = _form.currentState.validate();
    if (isValid) {
      _form.currentState.save();
      print(_editedCategory);
      if (_editedCategory.id != null) {
        _updateCategory();
      } else {
        _createCategory();
      }
      setState(() {
        Navigator.pop(context);
      });
    }
  }

  void _addCategoryItem() {
    final isValid = _categoryItemForm.currentState.validate();
    if (isValid) {
      _editedCategory.items
          .add(CategoryItem(id: null, text: _categoryItemTextController.text));
      _categoryItemTextController.clear();
      setState(() {});
    }
  }

  void _removeCategoryItem(String text) {
    setState(() {
      var index = _editedCategory.items.indexWhere((ci) => ci.text == text);
      _editedCategory.items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    var categoryId = ModalRoute.of(context).settings.arguments as int;
    if (categoryId == null) {
      categoryId = widget.parsedCategoryId;
    }
    return Scaffold(
      appBar: AppBar(
        title: categoryId != null
            ? Text('Ret egne kategori')
            : Text('Opret egne kategori'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              _saveForm();
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _form,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Kategori navn'),
                textInputAction: TextInputAction.next,
                controller: _categoryNameTextController,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Kategorien skal have et navn.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _editedCategory = Category(
                    id: _editedCategory.id,
                    title: value,
                    items: _editedCategory.items,
                  );
                },
              ),
              SizedBox(
                height: 30,
              ),
              Form(
                key: _categoryItemForm,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Tekst til nyt kategori kort',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        _addCategoryItem();
                        FocusScope.of(context).requestFocus(_categoryItemFocusNode);
                      },
                    ),
                  ),
                  textInputAction: TextInputAction.done,
                  controller: _categoryItemTextController,
                  focusNode: _categoryItemFocusNode,
                  onFieldSubmitted: (value) {
                    _addCategoryItem();
                    FocusScope.of(context).requestFocus(_categoryItemFocusNode);
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Kortet skal have udfyldt en tekst.';
                    }
                    return null;
                  },
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Tilføjede kort (${_editedCategory.items.length})',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(height: 5.0, color: Colors.grey),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _editedCategory.items.length,
                  itemBuilder: (_, i) => Column(
                    children: <Widget>[
                      CustomCategoryItemListTile(
                        id: _editedCategory.items[i].id,
                        text: _editedCategory.items[i].text,
                        removeCategoryItem: _removeCategoryItem,
                      ),
                      Divider(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
