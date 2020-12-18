import 'package:flutter/material.dart';
import 'package:margretheskaal/widgets/new_game_dialog.dart';

class StandardCategoryItem extends StatefulWidget {
  final int id;
  final String imageUrl;
  final String title;
  final int itemCount;
  final bool isStandard;

  StandardCategoryItem(
      {this.id, this.title, this.imageUrl, this.itemCount, this.isStandard});

  @override
  _StandardCategoryItemState createState() => _StandardCategoryItemState();
}

class _StandardCategoryItemState extends State<StandardCategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imageUrl),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.title,
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${widget.itemCount} kort',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    RaisedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => NewGameDialog(
                                  id: widget.id,
                                  title: widget.title,
                                  isStandard: widget.isStandard,
                                ));
                      },
                      textColor: Colors.white,
                      color: Theme.of(context).primaryColor,
                      child: Text('Vælg'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
