import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Tic-Tac-Toe'),
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
  List<int> _monkeyList = <int>[];
  List<int> _penguinList = <int>[];
  final List<List<int>> _winningPositionsList = <List<int>>[
    <int>[0, 1, 2],
    <int>[3, 4, 5],
    <int>[6, 7, 8],
    <int>[0, 3, 6],
    <int>[1, 4, 7],
    <int>[2, 5, 8],
    <int>[0, 4, 8],
    <int>[2, 4, 6]
  ];
  bool _isMonkeyTime = true;
  bool _gameOver = false;
  bool _clearPressed = false;

  void _resetGame() {
    setState(() {
      _gameOver = false;
      _clearPressed = true;
      _monkeyList.clear();
      _penguinList.clear();
      _isMonkeyTime = true;
    });
  }

  bool _isBoxPressed(int index) {
    return !_monkeyList.contains(index) && !_penguinList.contains(index);
  }

  void _populateList(int index) {
    setState(() {
      _clearPressed = false;
      if (!_gameOver && _isBoxPressed(index)) {
        if (_isMonkeyTime) {
          _monkeyList.add(index);
          if (_didItWin(_monkeyList) != null || _monkeyList.length == 5) {
            _gameOver = true;
            _monkeyList = _monkeyList.where((int element) => _didItWin(_monkeyList).contains(element)).toList();
            _penguinList.clear();
          }
          _isMonkeyTime = false;
        } else {
          _penguinList.add(index);
          if (_didItWin(_penguinList) != null) {
            _gameOver = true;
            _penguinList = _penguinList.where((int element) => _didItWin(_penguinList).contains(element)).toList();
            _monkeyList.clear();
          }
          _isMonkeyTime = true;
        }
      }
    });
  }

  List<int> _didItWin(List<int> _listIndexes) {
    for (final List<int> _winningPositions in _winningPositionsList) {
      if (_listIndexes.contains(_winningPositions.elementAt(0)) &&
          _listIndexes.contains(_winningPositions.elementAt(1)) &&
          _listIndexes.contains(_winningPositions.elementAt(2))) {
        return _winningPositions;
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
                child: GridView.builder(
                    padding: const EdgeInsets.all(8.0),
                    itemCount: 9,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () => _populateList(index),
                        child: AnimatedContainer(
                          decoration: BoxDecoration(
                            color: _clearPressed
                                ? Colors.white
                                : _penguinList.contains(index)
                                    ? Colors.green
                                    : _monkeyList.contains(index)
                                        ? Colors.red
                                        : Colors.white,
                            image: DecorationImage(
                                image: _clearPressed
                                    ? const ExactAssetImage('assets/images/white.png')
                                    : _penguinList.contains(index)
                                        ? const ExactAssetImage('assets/images/penguin.png')
                                        : _monkeyList.contains(index)
                                            ? const ExactAssetImage('assets/images/monkey.png')
                                            : const ExactAssetImage('assets/images/white.png')),
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                          duration: const Duration(milliseconds: 250),
                        ),
                      );
                    })),
            if (_gameOver)
              FlatButton(
                onPressed: _resetGame,
                color: Colors.amber,
                child: const Text(
                  'Try again!',
                ),
              ),
          ],
        ),
      ),
    );
  }
}
