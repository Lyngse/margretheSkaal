import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/categories.dart';
import '../widgets/standard_category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var standardCategories =
        Provider.of<Categories>(context).getStandardCategories;
    return Scaffold(
      body: GridView.builder(
        itemCount: standardCategories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 1.6,
        ),
        itemBuilder: (ctx, i) => StandardCategoryItem(
          id: standardCategories[i].id,
          title: standardCategories[i].title,
          isStandard: standardCategories[i].isStandard,
          itemCount: standardCategories[i].items.length,
          imageUrl: standardCategories[i].imageUrl,
        ),
      ),
    );
  }
}
