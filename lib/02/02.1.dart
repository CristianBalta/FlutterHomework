import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guess The Number',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Guess The Number'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController myController = TextEditingController();

  int numberToBeGuessed;
  int inputNumber;
  String result;
  String buttonText = 'Guess!';
  bool isEmpty = true;
  bool guessPressed = false;
  bool okPressed = false;

  void _guessPressed(int inputNumber) {
    setState(() {
      if (!isEmpty) {
        guessPressed = true;
        if (inputNumber < numberToBeGuessed) {
          result = 'You tried $inputNumber. Go higher!';
        } else if (inputNumber > numberToBeGuessed) {
          result = 'You tried $inputNumber. Go lower!';
        } else {
          result = 'You tried $inputNumber. You guessed right!';
        }
        myController.clear();
        isEmpty = true;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      numberToBeGuessed = _generateNumber();
    });
  }

  int _generateNumber() {
    final Random random = Random();
    final int returned = random.nextInt(101);
    print(returned);
    if (returned == 0)
      return 1;
    else
      return returned;
  }

  void _tryAgainPressed() {
    if (!okPressed) {
      Navigator.of(context).pop();
    }
    myController.clear();
    setState(() {
      guessPressed = false;
      inputNumber = null;
      buttonText = 'Guess!';
      okPressed = false;
      numberToBeGuessed = _generateNumber();
    });
  }

  void _okPressed() {
    Navigator.of(context).pop();
    myController.clear();
    setState(() {
      okPressed = true;
      buttonText = 'Reset!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.all(15.0),
                child: Column(children: <Widget>[
                  const Text(
                    'I am thinking of a number between 1 and 100.',
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    'It is your turn to guess it!',
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  if (guessPressed)
                    Text(
                      result,
                      style: const TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                ])),
            Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    child: Card(
                  margin: const EdgeInsets.all(16.0),
                  child: Column(children: <Widget>[
                    Container(
                        margin: const EdgeInsets.all(16.0),
                        child: const Text('Try a number:', style: TextStyle(fontSize: 20.0))),
                    Container(
                        margin: const EdgeInsets.all(10.0),
                        color: Colors.white,
                        child: TextField(
                            controller: myController,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                            onChanged: (String value) {
                              setState(() {
                                if (value.isEmpty) {
                                  isEmpty = true;
                                } else {
                                  inputNumber = int.parse(value);
                                  isEmpty = false;
                                }
                              });
                            })),
                    Container(
                        margin: const EdgeInsets.all(15.0),
                        child: FlatButton(
                            onPressed: () {
                              if (okPressed)
                                _tryAgainPressed();
                              else {
                                _guessPressed(inputNumber);
                                if (inputNumber == numberToBeGuessed)
                                  showDialog<AlertDialog>(
                                      context: context,
                                      // ignore: missing_return
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: const Text('You guessed right!',
                                              style: TextStyle(color: Colors.deepOrange)),
                                          content: Row(children: <Widget>[
                                            Text('It was $numberToBeGuessed',
                                                style: const TextStyle(color: Colors.black))
                                          ]),
                                          actions: <Widget>[
                                            FlatButton(child: const Text('Try Again!'), onPressed: _tryAgainPressed),
                                            FlatButton(child: const Text('OK!'), onPressed: _okPressed)
                                          ],
                                          backgroundColor: Colors.white,
                                        );
                                      });
                              }
                            },
                            color: Colors.amber,
                            child: Text(buttonText, style: const TextStyle(fontSize: 24.0))))
                  ]),
                ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
