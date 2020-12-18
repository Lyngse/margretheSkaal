import 'package:flutter/material.dart';
import 'package:margretheskaal/providers/categories.dart';
import 'package:margretheskaal/providers/database_service.dart';
import 'package:margretheskaal/screens/edit_custom_category_screen.dart';
import 'package:provider/provider.dart';

class ManageCustomCategoriesListItem extends StatefulWidget {
  final int id;
  final String title;
  final int itemCount;
  final Function refreshStateFunction;

  ManageCustomCategoriesListItem(
      {this.id, this.title, this.itemCount, this.refreshStateFunction});

  @override
  _ManageCustomCategoriesListItemState createState() =>
      _ManageCustomCategoriesListItemState();
}

class _ManageCustomCategoriesListItemState
    extends State<ManageCustomCategoriesListItem> {
  DatabaseService dbService = DatabaseService();

  // TODO
  void deleteCategory(int categoryId) async {
    var result = await dbService
        .deleteCategory(categoryId)
        .then((value) => setState(() {}));
    widget.refreshStateFunction();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title),
      subtitle: Text('${widget.itemCount} kort'),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) =>
                          EditCustomCategoryScreen(parsedCategoryId: widget.id),
                    )).then(widget.refreshStateFunction);
              },
              color: Theme.of(context).primaryColor,
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                showDialog(
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
                      'Vil du slette denne kategori?',
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
                          Provider.of<Categories>(
                            context,
                            listen: false,
                          ).deleteCustomCategory(widget.id);
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
