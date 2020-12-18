import 'dart:async';
import 'package:flutter/material.dart';
import 'package:margretheskaal/providers/categories.dart';
import 'package:margretheskaal/screens/edit_custom_category_screen.dart';
import 'package:margretheskaal/widgets/manage_custom_categories_list_item.dart';
import 'package:provider/provider.dart';

class ManageCustomCategoriesScreen extends StatefulWidget {
  static const routeName = '/manage-custom-categories';

  @override
  _ManageCustomCategoriesScreenState createState() =>
      _ManageCustomCategoriesScreenState();
}

class _ManageCustomCategoriesScreenState extends State<ManageCustomCategoriesScreen> {

  @override
  void initState() {
    super.initState();
  }

  FutureOr onBack(dynamic value) {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    var _customCategories = Provider.of<Categories>(context).getCustomCategories;
    return Scaffold(
      appBar: AppBar(
        title: Text('Håndter egne kategorier'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context)
                  .pushNamed(EditCustomCategoryScreen.routeName);
            },
          )
        ],
      ),
      body: Padding(
              padding: EdgeInsets.all(8),
              child: ListView.builder(
                itemCount: _customCategories.length,
                itemBuilder: (_, i) => Column(
                  children: <Widget>[
                    ManageCustomCategoriesListItem(
                      id: _customCategories[i].id,
                      title: _customCategories[i].title,                     
                      itemCount: _customCategories[i].itemCount,
                      refreshStateFunction: onBack,
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => EditCustomCategoryScreen())).then(onBack);                 
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
