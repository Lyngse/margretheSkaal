import 'dart:async';
import 'package:flutter/material.dart';
import 'package:margretheskaal/providers/categories.dart';
import 'package:margretheskaal/screens/manage_custom_categories_screen.dart';
import 'package:margretheskaal/widgets/custom_category_item.dart';
import 'package:provider/provider.dart';

class CustomCategoriesScreen extends StatefulWidget {
  @override
  _CustomCategoriesScreenState createState() => _CustomCategoriesScreenState();
}

class _CustomCategoriesScreenState extends State<CustomCategoriesScreen> {
  var _isInit = true;

  @override
  void initState() {
    _isInit = true;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_isInit) {
      Provider.of<Categories>(context).getAndSetCustomCategories();
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  FutureOr onBack(dynamic value) {
    setState(() {
      Provider.of<Categories>(context, listen: false)
          .getAndSetCustomCategories();
    });
  }

  @override
  Widget build(BuildContext context) {
    var _customCategories =
        Provider.of<Categories>(context).getCustomCategories;
    return Scaffold(
      body: _customCategories.length > 0
          ? GridView.builder(
              itemCount: _customCategories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 4.5,
              ),
              itemBuilder: (ctx, i) => CustomCategoryItem(
                  id: _customCategories[i].id,
                  title: _customCategories[i].title,
                  isStandard: _customCategories[i].isStandard,
                  itemCount: _customCategories[i].items.length,
                  index: i),
            )
          : Padding(
              padding: EdgeInsets.only(right: 16, left: 16, top: 42),
              child: Column(
                children: <Widget>[
                  Text(
                    'Opret dine egne kategorier og håndter dine egne kategorier. Tryk på tandhjulet i bunden af skærmen!',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    child: Image.asset('assets/images/drawnArrow2.png',)

                  )
                ],
              ),
            ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.settings),
        onPressed: () {
          // Navigator.of(context)
          //         .pushNamed(ManageCustomCategoriesScreen.routeName);
          Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => ManageCustomCategoriesScreen()))
              .then(onBack);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
