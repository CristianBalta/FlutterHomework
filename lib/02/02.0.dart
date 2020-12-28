import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Square||Triangle',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Square||Triangle'),
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

  bool isError = false;
  String input;
  int inputNumber;
  String output;

  void _checkNumber() {
    setState(() {
      if (isError) {
        output = 'Please enter a number.';
        input = '';
      } else if (inputNumber == 1) {
        output = 'The number $inputNumber is a SQUARE and a CUBE';
      } else {
        if (_isSquare(inputNumber) && _isCube(inputNumber)) {
          output = 'The number $inputNumber is a SQUARE and a CUBE.';
        } else if (_isSquare(inputNumber)) {
          output = 'The number $inputNumber is a SQUARE.';
        } else if (_isCube(inputNumber)) {
          output = 'The number $inputNumber is a CUBE.';
        } else {
          output = 'The number $inputNumber is not a SQUARE neither a CUBE.';
        }
        myController.clear();
        isError = true;
      }
    });
  }

  bool _isSquare(int input) {
    for (int i = 0; i < input / 2; i++) {
      if (i * i == input) {
        return true;
      }
    }
    return false;
  }

  bool _isCube(int input) {
    for (int i = 0; i < input / 2; i++) {
      if (i * i * i == input) {
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.all(15.0),
                child: const Text(
                  'Enter your number:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: myController,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                onChanged: (String value) {
                  setState(() {
                    if (value.isEmpty)
                      isError = true;
                    else {
                      input = value;
                      inputNumber = int.parse(value);
                      isError = false;
                    }
                  });
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _checkNumber();
          showDialog<AlertDialog>(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(input),
                  content: Text(output, style: const TextStyle(fontWeight: FontWeight.bold)),
                );
              });
        },
        backgroundColor: Colors.red,
        tooltip: 'Check it.',
        child: const Icon(Icons.check),
      ),
    );
  }
}
