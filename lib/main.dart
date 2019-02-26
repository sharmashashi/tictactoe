import 'package:flutter/material.dart';

String _00 = '',
    _01 = '',
    _02 = '',
    _10 = '',
    _11 = '',
    _12 = '',
    _20 = '',
    _21 = '',
    _22 = '';
bool isLocked1 = false,
    isLocked2 = false,
    isLocked3 = false,
    isLocked4 = false,
    isLocked5 = false,
    isLocked6 = false,
    isLocked7 = false,
    isLocked8 = false,
    isLocked9 = false,
    isFinished = false;

int checkCounter = 0;

TextEditingController playerOnecontroller = new TextEditingController();
TextEditingController playerTwocontroller = new TextEditingController();
String playerOne, playerTwo, turn;
String playingValue = 'O';

bool initialStep = true;

void main() => runApp(Main());
//ThemeData red =  ThemeData.raw(brightness: Brightness.light,
//    splashFactory:  one,
//    primaryColor: Colors.red,
//    primaryColorBrightness: Brightness.light,
//    primaryColorLight: Colors.green,
//    primaryColorDark: Colors.black,
//    accentColor: Colors.redAccent,
//    accentColorBrightness: Brightness.light,
//    canvasColor: Colors.red[800],
//    scaffoldBackgroundColor: Colors.red,
//    bottomAppBarColor: Colors.red,
//    cardColor: Colors.red,
//    dividerColor: Colors.white,
//    highlightColor: Colors.yellow,
//    splashColor: Colors.white,
//    selectedRowColor: Colors.red[800],
//    unselectedWidgetColor: Colors.red,
//    disabledColor: Colors.red[300],
//    buttonColor: Colors.red[500],
//    secondaryHeaderColor: Colors.red,
//    textSelectionColor: Colors.red[600],
//    textSelectionHandleColor: Colors.green,
//    backgroundColor: Colors.red,
//    dialogBackgroundColor: Colors.transparent,
//    indicatorColor: Colors.white,
//    hintColor: Colors.grey,
//    errorColor: Colors.amber[600],
//    toggleableActiveColor: Colors.blue,
//    textTheme: TextTheme(),
//    primaryTextTheme: TextTheme(),
//    accentTextTheme: TextTheme(),
//    inputDecorationTheme: InputDecorationTheme(),
//    iconTheme: IconThemeData(),
//    primaryIconTheme: IconThemeData(),
//    accentIconTheme: IconThemeData(),
//    sliderTheme: null,
//    chipTheme: null,
//    platform: TargetPlatform.android
//);

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.green,
            title: new Text('TIC TAC TOE'),
            centerTitle: true,
            elevation: 5.0,
          ),
          body: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Center(
                child: new TextField(
                  decoration: new InputDecoration(hintText: 'Player 1 name'),
                  controller: playerOnecontroller,
                ),
              ),
              new Center(
                child: new TextField(
                  decoration: new InputDecoration(hintText: 'Player 2 name'),
                  controller: playerTwocontroller,
                ),
              ),
              new MaterialButton(
                onPressed: () {
                  playerOne = playerOnecontroller.text;
                  playerTwo = playerTwocontroller.text;
                  Navigator.of(context).push(
                       MaterialPageRoute(builder: (context) => new Main()));
                },
                color: Colors.blue,
                child: new Text(
                  'GO',
                  style: new TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              )
            ],
          ),
        ));
  }
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  void resetAll() {
    setState(() {
      checkCounter = 0;
      isLocked1 = false;
      isLocked2 = false;
      isLocked3 = false;
      isLocked4 = false;
      isLocked5 = false;
      isLocked6 = false;
      isLocked7 = false;
      isLocked8 = false;
      isLocked9 = false;
      isFinished = false;
      _00 = '';
      _01 = '';
      _02 = '';
      _10 = '';
      _11 = '';
      _12 = '';
      _20 = '';
      _21 = '';
      _22 = '';
    });
  }

  void checkWinner() {
    if ((_00 == _01 && _01 == _02 && _00 != '') ||
        (_00 == _10 && _10 == _20 && _00 != '') ||
        (_00 == _11 && _11 == _22 && _00 != '') ||
        (_01 == _11 && _11 == _21 && _01 != '') ||
        (_02 == _12 && _12 == _22 && _02 != '') ||
        (_02 == _11 && _11 == _20 && _02 != '') ||
        (_10 == _11 && _11 == _12 && _10 != '') ||
        (_20 == _21 && _21 == _22 && _20 != '')) {
      isFinished = true;
//      showDialog(
//          context: context,
//          builder: (context) => new SimpleDialog(
//            contentPadding: new EdgeInsets.all(8.0),
//            children: <Widget>[
//              new Center(
//                child: new Text(
//                  turn + ' Won!',
//                  style: new TextStyle(
//                      color: Colors.blue,
//                      fontSize: 18.0,
//                      fontWeight: FontWeight.bold),
//                ),
//              )
//            ],
//          ));
      setState(() {
        resetAll();
      });
    } else
      () {};
  }

  String assignPlayingvalue() {
    if (playingValue == 'O')
      return 'X';
    else
      return 'O';
  }

  void _buttonOperation(String buttonValue) {
    if (isFinished == true) {
    } else {
      setState(() {
        if (buttonValue == '1' && isLocked1 == false) {
          _00 = playingValue;      checkCounter++;

          playingValue = assignPlayingvalue();
          isLocked1 = true;
        } else if (buttonValue == '2' && isLocked2 == false) {
          _01 = playingValue;      checkCounter++;

          playingValue = assignPlayingvalue();
          isLocked2 = true;
        } else if (buttonValue == '3' && isLocked3 == false) {
          _02 = playingValue;      checkCounter++;

          playingValue = assignPlayingvalue();
          isLocked3 = true;
        } else if (buttonValue == '4' && isLocked4 == false) {
          _10 = playingValue;      checkCounter++;

          playingValue = assignPlayingvalue();
          isLocked4 = true;
        } else if (buttonValue == '5' && isLocked5 == false) {
          _11 = playingValue;      checkCounter++;

          playingValue = assignPlayingvalue();
          isLocked5 = true;
        } else if (buttonValue == '6' && isLocked6 == false) {
          _12 = playingValue;      checkCounter++;

          playingValue = assignPlayingvalue();
          isLocked6 = true;
        } else if (buttonValue == '7' && isLocked7 == false) {
          _20 = playingValue;      checkCounter++;

          playingValue = assignPlayingvalue();
          isLocked7 = true;
        } else if (buttonValue == '8' && isLocked8 == false) {
          _21 = playingValue;      checkCounter++;

          playingValue = assignPlayingvalue();
          isLocked8 = true;
        } else if (buttonValue == '9' && isLocked9 == false) {
          _22 = playingValue;      checkCounter++;

          playingValue = assignPlayingvalue();
          isLocked9 = true;
        }
      });
    }
    checkWinner();
    if(checkCounter >= 9)
      checkCounter++;
    if (checkCounter == 11 && isFinished == false) {
//      showDialog(
//          context: context,
//          builder: (context) => new SimpleDialog(
//                contentPadding: new EdgeInsets.all(8.0),
//                title: new Text(
//                  'Shashi Wins, you both loose !!!',
//                  style: new TextStyle(
//                      color: Colors.blue,
//                      fontSize: 18.0,
//                      fontWeight: FontWeight.bold),
//                ),
//              ));
      setState(() {
        resetAll();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        backgroundColor: Colors.white,
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: new Text('TIC TAC TOE'),
          centerTitle: true,
          elevation: 5.0,
        ),
        body: new Center(
            child: new Container(
          height: 181.0,
          width: 181.0,
          child: new Material(
            shadowColor: Colors.green,
            color: Colors.white,
            elevation: 5.0,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new SizedBox(
                      height: 60.0,
                      width: 60.0,
                      child: new Material(
                        type: MaterialType.button,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: new MaterialButton(
                            color: Colors.green,
                            onPressed: () {
                              _buttonOperation('1');
                            },
                            child: Center(
                                child: new Text(
                              _00,
                              style: new TextStyle(
                                  color: Colors.white, fontSize: 25.0),
                            )),
                          ),
                        ),
                      ),
                    ),
                    new SizedBox(
                      height: 60.0,
                      width: 60.0,
                      child: new Material(
                        type: MaterialType.button,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: new MaterialButton(
                            color: Colors.green,
                            onPressed: () {
                              _buttonOperation('2');
                            },
                            child: Center(
                                child: new Text(
                              _01,
                              style: new TextStyle(
                                  color: Colors.white, fontSize: 25.0),
                            )),
                          ),
                        ),
                      ),
                    ),
                    new SizedBox(
                      height: 60.0,
                      width: 60.0,
                      child: new Material(
                        type: MaterialType.button,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: new MaterialButton(
                            color: Colors.green,
                            onPressed: () {
                              _buttonOperation('3');
                            },
                            child: Center(
                                child: new Text(
                              _02,
                              style: new TextStyle(
                                  color: Colors.white, fontSize: 25.0),
                            )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new SizedBox(
                      height: 60.0,
                      width: 60.0,
                      child: new Material(
                        type: MaterialType.button,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: new MaterialButton(
                            color: Colors.green,
                            onPressed: () {
                              _buttonOperation('4');
                            },
                            child: Center(
                                child: new Text(
                              _10,
                              style: new TextStyle(
                                  color: Colors.white, fontSize: 25.0),
                            )),
                          ),
                        ),
                      ),
                    ),
                    new SizedBox(
                      height: 60.0,
                      width: 60.0,
                      child: new Material(
                        type: MaterialType.button,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: new MaterialButton(
                            color: Colors.green,
                            onPressed: () {
                              _buttonOperation('5');
                            },
                            child: Center(
                                child: new Text(
                              _11,
                              style: new TextStyle(
                                  color: Colors.white, fontSize: 25.0),
                            )),
                          ),
                        ),
                      ),
                    ),
                    new SizedBox(
                      height: 60.0,
                      width: 60.0,
                      child: new Material(
                        type: MaterialType.button,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: new MaterialButton(
                            color: Colors.green,
                            onPressed: () {
                              _buttonOperation('6');
                            },
                            child: Center(
                                child: new Text(
                              _12,
                              style: new TextStyle(
                                  color: Colors.white, fontSize: 25.0),
                            )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new SizedBox(
                      height: 60.0,
                      width: 60.0,
                      child: new Material(
                        type: MaterialType.button,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: new MaterialButton(
                            color: Colors.green,
                            onPressed: () {
                              _buttonOperation('7');
                            },
                            child: Center(
                                child: new Text(
                              _20,
                              style: new TextStyle(
                                  color: Colors.white, fontSize: 25.0),
                            )),
                          ),
                        ),
                      ),
                    ),
                    new SizedBox(
                      height: 60.0,
                      width: 60.0,
                      child: new Material(let inputItem = [[7,8,9,'+'],[4,5,6,'-'],[1,2,3,'x'],['.',0,'=','/']]
                        type: MaterialType.button,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: new MaterialButton(
                            color: Colors.green,
                            onPressed: () {
                              _buttonOperation('8');
                            },
                            child: Center(
                                child: new Text(
                              _21,
                              style: new TextStyle(
                                  color: Colors.white, fontSize: 25.0),
                            )),
                          ),
                        ),
                      ),
                    ),
                    new SizedBox(
                      height: 60.0,
                      width: 60.0,
                      child: new Material(
                        type: MaterialType.button,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: new MaterialButton(
                            color: Colors.green,
                            onPressed: () {
                              _buttonOperation('9');
                            },
                            child: Center(
                                child: new Text(
                              _22,
                              style: new TextStyle(
                                  color: Colors.white, fontSize: 25.0),
                            )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
