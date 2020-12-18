import 'package:flutter/material.dart';
import 'package:margretheskaal/providers/categories.dart';
import 'package:provider/provider.dart';

import '../screens/categories_screen.dart';
import '../screens/custom_categories_screen.dart';

class CategoryTabScreen extends StatefulWidget {
  @override
  _CategoryTabScreenState createState() => _CategoryTabScreenState();
}

class _CategoryTabScreenState extends State<CategoryTabScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': CategoriesScreen(),
        'title': 'Standard kategorier',
      },
      {
        'page': CustomCategoriesScreen(),
        'title': 'Egne kategorier',
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text(_pages[0]['title']),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text(_pages[1]['title']),
          ),
        ],
      ),
    );
  }
}
