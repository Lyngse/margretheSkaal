import 'package:flutter/material.dart';
import 'package:margretheskaal/screens/active_game_screen.dart';

class NewGameDialog extends StatefulWidget {
  final int id;
  final String title;
  final bool isStandard;

  NewGameDialog({
    this.id,
    this.title,
    this.isStandard,
  });

  @override
  _NewGameDialogState createState() => _NewGameDialogState();
}

class _NewGameDialogState extends State<NewGameDialog> {
  bool _playWithTime = true;
  int _roundTime = 60;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title,
          style: TextStyle(color: Colors.white, fontSize: 26)),
      backgroundColor: Color.fromRGBO(56, 124, 163, 1),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Divider(height: 5.0, color: Colors.black),
          SizedBox(
            height: 10,
          ),
          SwitchListTile(
            title: Text(
              'Spil med tid?',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            value: _playWithTime,
            subtitle: Text(
              'Hvis der spilles der med tid, bruger spillet runder.',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onChanged: (newValue) {
              setState(() {
                _playWithTime = newValue;
              });
            },
          ),
          _playWithTime
              ? Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Divider(height: 5.0, color: Colors.black),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Tid pr. runde',
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ),
                      RadioListTile(
                        value: 30,
                        groupValue: _roundTime,
                        title: Text('30 sekunder',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        onChanged: (newValue) {
                          setState(() {
                            _roundTime = newValue;
                          });
                        },
                        selected: false,
                        activeColor: Theme.of(context).accentColor,
                      ),
                      RadioListTile(
                        value: 60,
                        groupValue: _roundTime,
                        title: Text('60 sekunder',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        onChanged: (newValue) {
                          setState(() {
                            _roundTime = newValue;
                          });
                        },
                        selected: true,
                        activeColor: Theme.of(context).accentColor,
                      ),
                      RadioListTile(
                        value: 90,
                        groupValue: _roundTime,
                        title: Text('90 sekunder',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        onChanged: (newValue) {
                          setState(() {
                            _roundTime = newValue;
                          });
                        },
                        selected: false,
                        activeColor: Theme.of(context).accentColor,
                      ),
                    ],
                  ),
                )
              : Container()
        ],
      ),
      actions: <Widget>[
        FlatButton(
          child: Text(
            'Luk',
          ),
          textColor: Colors.white,
          onPressed: () => Navigator.pop(context),
        ),
        RaisedButton(
          child: Text('Start'),
          onPressed: () {
            Navigator.of(context).pushNamed(
              ActiveGameScreen.routeName,
              arguments: {
                'categoryId': widget.id,
                'isStandard': widget.isStandard,
                'playWithTime': _playWithTime,
                'roundTime': _roundTime,
              },
            );
          },
          textColor: Colors.white,
          color: Theme.of(context).primaryColor,
        ),
      ],
    );
  }
}
