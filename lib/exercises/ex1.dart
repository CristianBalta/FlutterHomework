import 'package:flutter/material.dart';
import 'package:http/http.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country List',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Country List'),
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
  final List<String> _finalCountryList = <String>[];
  final List<String> _finalFlagsList = <String>[];

  Future<void> _countryList() async {
    final Response response = await get('https://www.worldometers.info/geography/flags-of-the-world/');

    final String data = response.body;
    final List<String> parts = data.split('<a href="/img/flags/').skip(1).toList();
    setState(() {
      for (final String part in parts) {
        final String country = part.split('10px">')[1].split('<')[0];
        final String file = part.substring(0, part.indexOf('"'));
        _finalCountryList.add('$country');
        _finalFlagsList.add('https://www.worldometers.info/img/flags/$file');
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _countryList();
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
            Expanded(
                child: GridView.builder(
                    padding: const EdgeInsets.all(16.0),
                    itemCount: _finalCountryList.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 32.0,
                      crossAxisSpacing: 32.0,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              _finalCountryList.elementAt(index),
                              style: const TextStyle(
                                fontSize: 24.0,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Image.network(_finalFlagsList[index]),
                        ],
                      ));
                    })),
          ],
        ),
      ),
    );
  }
}
