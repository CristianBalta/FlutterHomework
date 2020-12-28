import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Currency converter',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Money boss'),
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
  bool isError = false;
  double enterAmount = 0;
  double exitAmount = 0;

  void _convertValue() {
    setState(() {
      exitAmount = 4.87 * enterAmount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset('assets/images/money.png'),
            const Text(
              'The value from EUR to RON is:',
              style: TextStyle(fontSize: 20),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'(^\d*\.?\d*)'))],
                onChanged: (String newValue) {
                  setState(() {
                    if (newValue.isEmpty) {
                      isError = false;
                      enterAmount = 0;
                    } else if (double.parse(newValue).isNegative || double.parse(newValue).isNaN) {
                      isError = true;
                      enterAmount = 0;
                    } else {
                      isError = false;
                      enterAmount = double.parse(newValue);
                    }
                  });
                },
                decoration: InputDecoration(
                  suffix: const Text('EUR'),
                  hintText: 'Enter the amount.',
                  errorText: isError ? 'Wrong input!' : null,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                _convertValue();
              },
              color: Colors.tealAccent,
              child: const Text('Convert'),
            ),
            Text(
              'The amount is $exitAmount RON',
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
