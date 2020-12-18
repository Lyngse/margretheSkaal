import 'package:flutter/material.dart';

import './category_item.dart';

class Category {
  int id;
  String title;
  List<CategoryItem> items;
  String imageUrl;
  bool isStandard;

  Category({
    @required this.id,
    @required this.title,
    @required this.items,
    this.imageUrl = '',
    this.isStandard = false,
  });

  int get itemCount {
    return items.length;
  }

  Category.fromMap(Map<String, dynamic> map) {
        id = map['Id'];
        title = map['Title'];
        imageUrl = map['ImageUrl'];
        items = map['Items'];
        isStandard = false;
      }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'Id': id,
      'Title': title,
      'ImageUrl': imageUrl
    };
    if (id != null) {
      map['Id'] = id;
    }
    return map;
  }
}
