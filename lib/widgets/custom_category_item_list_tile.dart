import 'package:flutter/material.dart';

class CustomCategoryItemListTile extends StatelessWidget {
  final int id;
  final String text;
  final Function removeCategoryItem;

  CustomCategoryItemListTile({this.id, this.text, this.removeCategoryItem});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text.toString()),
      trailing: Container(
        width: 50,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                return showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    backgroundColor: Color.fromRGBO(56, 124, 163, 1),
                    title: Text(
                      'Er du sikker?',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    content: Text(
                      'Vil du gerne slette dette kort?',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    actions: <Widget>[
                      FlatButton(
                        child: Text(
                          'Nej',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                      ),
                      FlatButton(
                        child: Text(
                          'Ja',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          removeCategoryItem(text);
                          Navigator.of(ctx).pop();
                        },
                      ),
                    ],
                  ),
                );
              },
              color: Theme.of(context).errorColor,
            ),
          ],
        ),
      ),
    );
  }
}
