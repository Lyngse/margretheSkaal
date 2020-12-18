import 'package:flutter/material.dart';
import 'package:margretheskaal/widgets/new_game_dialog.dart';

class CustomCategoryItem extends StatefulWidget {
  final int id;
  final String title;
  final bool isStandard;
  final int itemCount;
  final int index;

  final color1 = [
    Colors.deepOrange,
    Colors.indigo,
    Colors.red,
    Colors.green,
    Colors.deepPurple,
    Colors.orange,
  ];
  final color2 = [
    Colors.deepOrangeAccent,
    Colors.indigoAccent,
    Colors.redAccent,
    Colors.greenAccent,
    Colors.deepPurpleAccent,
    Colors.orangeAccent,
  ];

  CustomCategoryItem(
      {this.id, this.title, this.isStandard, this.itemCount, this.index});

  @override
  _CustomCategoryItemState createState() => _CustomCategoryItemState();
}

class _CustomCategoryItemState extends State<CustomCategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          widget.color1[(widget.index % widget.color1.length)],
          widget.color2[(widget.index % widget.color2.length)]
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      )),
      child: Column(
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
                      widget.title.toString(),
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
                              isStandard: false,
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
    );
  }
}
