import 'package:flutter/material.dart';

class CategoryItem {
  int id;
  String text;
  int categoryId;

  CategoryItem({
    this.id,
    this.text,
    this.categoryId = 0,
  });


  CategoryItem.fromMap(Map<String, dynamic> map) {
        id = map['Id'];
        text = map['Text'];
        categoryId = map['CategoryId'];      
      }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'Id': id,
      'Text': text,
      'CategoryId': categoryId
    };
    if (id != null) {
      map['Id'] = id;
    }
    return map;
  }
}
