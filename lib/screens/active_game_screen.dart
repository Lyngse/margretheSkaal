import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:margretheskaal/models/category.dart';
import 'package:margretheskaal/models/category_item.dart';
import 'package:margretheskaal/providers/categories.dart';
import 'package:provider/provider.dart';

class ActiveGameScreen extends StatefulWidget {
  static const routeName = '/active-game';

  @override
  _ActiveGameScreenState createState() => _ActiveGameScreenState();
}

class _ActiveGameScreenState extends State<ActiveGameScreen>
    with TickerProviderStateMixin {
  var _isInit = true;
  int _categoryId;
  bool _isStandard;
  bool _playWithTime;
  int _roundTime;
  Category _category;
  Timer _timer;
  int _start;
  CategoryItem _currentCard;
  List<CategoryItem> _cardsInPlay;
  int _team1Points;
  int _team2Points;
  int _currentTeam;

  @override
  void initState() {
    _isInit = true;
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (_playWithTime) {
        showEndRoundDialog();
      }
    });
  }

  @override
  dispose() {
    if (_playWithTime && _timer != null) {
      _timer.cancel();
    }
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    super.dispose();
  }

  @override
  void didChangeDependencies() {
    if (_isInit) {
      final Map arguments = ModalRoute.of(context).settings.arguments as Map;
      _categoryId = arguments['categoryId'];
      _isStandard = arguments['isStandard'];
      _playWithTime = arguments['playWithTime'];
      _roundTime = arguments['roundTime'];
      _start = _roundTime;
      SystemChrome.setEnabledSystemUIOverlays([]);
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeRight,
        DeviceOrientation.landscapeLeft,
      ]);

      if (_isStandard) {
        _category = Provider.of<Categories>(context)
            .getStandardCategoryById(_categoryId);
      } else {
        _category =
            Provider.of<Categories>(context).getCustomCategoryById(_categoryId);
      }
      resetGame();
      shuffleCards();
      drawCard();
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  void startTimer() {
    _start = _roundTime;
    if (_currentTeam == 0 || _currentTeam == 2) {
      _currentTeam = 1;
    } else if (_currentTeam == 1) {
      _currentTeam = 2;
    }
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(oneSec, (Timer timer) {
      if (_start == 0) {
        setState(() {
          timer.cancel();
          if (_cardsInPlay.length > 0) {
            showEndRoundDialog();
          } else {
            if (_playWithTime) {
              _timer.cancel();
            }
            showEndGameDialog();
          }
        });
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  void resetGame() {
    if (_playWithTime) {
      _team1Points = 0;
      _team2Points = 0;
      _currentTeam = 0;
    }
    _cardsInPlay = [..._category.items];
  }

  void newGame() {
    resetGame();
    shuffleCards();
    drawCard();

    if (_playWithTime) {
      startTimer();
    }
  }

  void skipCard() {
    shuffleCards();
    drawCard();
  }

  void shuffleCards() {
    var rng = Random();
    for (var i = 0; i < _cardsInPlay.length; i++) {
      var randomIndex = rng.nextInt(_cardsInPlay.length);
      CategoryItem temp = _cardsInPlay[randomIndex];
      _cardsInPlay[randomIndex] = _cardsInPlay[i];
      _cardsInPlay[i] = temp;
    }
  }

  void drawCard() {
    setState(() {
      _currentCard = _cardsInPlay[0];
    });
  }

  void nextCard() {
    if (_playWithTime) {
      if (_currentTeam == 1) {
        _team1Points += 1;
      } else {
        _team2Points += 1;
      }
    }

    _cardsInPlay.removeAt(0);
    if (_cardsInPlay.length == 1) {
      drawCard();
    }
    if (_cardsInPlay.length > 0) {
      drawCard();
    } else {
      if (_playWithTime) {
        _timer.cancel();
      }
      showEndGameDialog();
    }
  }

  void showEndRoundDialog() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: (_currentTeam == 1 || _currentTeam == 0
            ? Text(
                'Hold 1 gør jer klar!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
                textAlign: TextAlign.center,
              )
            : Text(
                'Hold 2 gør jer klar!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
                textAlign: TextAlign.center,
              )),
        backgroundColor: Color.fromRGBO(56, 124, 163, 1),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Divider(height: 5.0, color: Colors.white),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text('Hold 1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        )),
                    Text(_team1Points.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text('Hold 2',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        )),
                    Text(_team2Points.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(height: 5.0, color: Colors.white),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: ButtonTheme(
                minWidth: 220,
                child: RaisedButton(
                  child: Text(
                    'Start',
                    style: TextStyle(fontSize: 18),
                  ),
                  onPressed: () {
                    startTimer();
                    Navigator.pop(context);
                  },
                  textColor: Colors.white,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showEndGameDialog() {
    var titleText = '';
    if (_playWithTime) {
      if (_team1Points > _team2Points) {
        titleText = 'Hold 1 vandt!';
      } else if (_team2Points > _team1Points) {
        titleText = 'Hold 2 vandt!';
      } else {
        titleText = 'Uafgjort!';
      }
    } else {
      titleText = 'Spillet er slut!';
    }

    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          titleText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Color.fromRGBO(56, 124, 163, 1),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            if (_playWithTime) ...[
              Divider(height: 5.0, color: Colors.white),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Text(
                        'Hold 1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      Text(_team1Points.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Text(
                        'Hold 2',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      Text(_team2Points.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(height: 5.0, color: Colors.white),
              SizedBox(
                height: 20,
              ),
            ] else ...[
              Divider(height: 5.0, color: Colors.white),
              SizedBox(
                height: 10,
              ),
            ],
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: ButtonTheme(
                    minWidth: 100,
                    child: RaisedButton(
                      child: Text(
                        'Hovedmenu',
                        style: TextStyle(fontSize: 14),
                      ),
                      onPressed: () {
                        SystemChrome.setPreferredOrientations([
                          DeviceOrientation.portraitUp,
                          DeviceOrientation.portraitDown,
                        ]);
                        SystemChrome.setEnabledSystemUIOverlays(
                            [SystemUiOverlay.bottom]);
                        Navigator.of(context).pop();
                        Navigator.of(context).pushReplacementNamed('/tab');
                      },
                      textColor: Colors.white,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: ButtonTheme(
                    minWidth: 100,
                    child: RaisedButton(
                      child: const Text(
                        'Spil igen',
                        style: TextStyle(fontSize: 14),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        newGame();
                      },
                      textColor: Colors.white,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
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
                            'Vil du gerne tilbage til hovedmenuen?',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          actions: <Widget>[
                            FlatButton(
                              child: Text('Nej',
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                              onPressed: () {
                                Navigator.of(ctx).pop();
                              },
                            ),
                            FlatButton(
                              child: Text('Ja',
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                              onPressed: () {
                                Navigator.of(ctx).pop();
                                SystemChrome.setEnabledSystemUIOverlays(
                                    [SystemUiOverlay.bottom]);
                                SystemChrome.setPreferredOrientations([
                                  DeviceOrientation.portraitUp,
                                  DeviceOrientation.portraitDown,
                                ]);
                                Navigator.of(context)
                                    .pushReplacementNamed('/tab');
                              },
                            ),
                          ],
                        ),
                      );
                    },
                    color: Colors.white,
                    iconSize: 50,
                  ),
                ),
                _playWithTime
                    ? Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            '$_start',
                            style: TextStyle(color: Colors.white, fontSize: 60),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
            FittedBox(
              child: Text(
                _currentCard.text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 42,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: ButtonTheme(
                      minWidth: 180,
                      height: 60,
                      child: RaisedButton(
                        child: Text(
                          'Pas',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        onPressed: _cardsInPlay.length <= 1
                            ? null
                            : () {
                                skipCard();
                              },
                        textColor: Colors.white,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ButtonTheme(
                      minWidth: 180,
                      height: 60,
                      child: RaisedButton(
                        child: Text(
                          'Næste',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        onPressed: () {
                          nextCard();
                        },
                        textColor: Colors.white,
                        color: Colors.green,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
