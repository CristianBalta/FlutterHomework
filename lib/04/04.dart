import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Movies'),
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
  final TextEditingController _inputTextController = TextEditingController();

  List<Movie> _movies = <Movie>[];
  final List<String> _dropDown = <String>[
    'Default',
    'Rating asc',
    'Rating desc',
    'Runtime asc',
    'Runtime desc',
    'Year asc',
    'Year desc',
  ];

  bool _isError = false;
  bool _filterPressed = false;

  @override
  void initState() {
    super.initState();
    _getMovies();
  }

  Future<void> _getMovies() async {
    final Response response = await get('https://yts.mx/api/v2/list_movies.json');
    final Map<String, dynamic> responseData = jsonDecode(response.body);
    final Map<String, dynamic> data = responseData['data'];
    final List<dynamic> movies = data['movies'];

    for (int i = 0; i < movies.length; i++) {
      final Map<String, dynamic> item = movies[i];
      final Movie movie = Movie(
        id: item['id'],
        title: item['title'],
        year: item['year'],
        runTime: item['runtime'],
        rating: item['rating'],
        cover: item['medium_cover_image'],
      );

      _movies.add(movie);
    }

    setState(() {});
  }

  void _sortItems(String value) {
    switch (value) {
      case 'Rating asc':
        _movies.sort((Movie first, Movie second) => first.rating.compareTo(second.rating));
        break;
      case 'Rating desc':
        _movies.sort((Movie first, Movie second) => second.rating.compareTo(first.rating));
        break;
      case 'Year asc':
        _movies.sort((Movie first, Movie second) => first.year.compareTo(second.year));
        break;
      case 'Year desc':
        _movies.sort((Movie first, Movie second) => second.year.compareTo(first.year));
        break;
      case 'Runtime asc':
        _movies.sort((Movie first, Movie second) => first.runTime.compareTo(second.runTime));
        break;
      case 'Runtime desc':
        _movies.sort((Movie first, Movie second) => second.runTime.compareTo(first.runTime));
        break;
      default:
        _movies.sort((Movie first, Movie second) => second.id.compareTo(first.id));
        break;
    }
  }

  void _searchItems() {
    setState(() {
      if (_movies.isEmpty) {
        _movies.add(Movie(id: 1, title: 'No Movie found! :(', year: null, runTime: null, rating: null, cover: null));
      } else {
        if (_inputTextController.text.isEmpty) {
          _isError = true;
        } else {
          _movies = _movies.where((Movie movie) => movie.year == int.parse(_inputTextController.text)).toList();
          _filterPressed = true;
          _isError = false;
          _inputTextController.clear();
        }
      }
    });
  }

  void _restoreItems() {
    _movies.clear();
    _getMovies();
    _filterPressed = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(widget.title),
          DropdownButton<String>(
              underline: Container(),
              icon: const Icon(Icons.sort, color: Colors.white),
              items: _dropDown.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String value) {
                setState(() {
                  _sortItems(value);
                });
              })
        ],
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: _inputTextController,
              decoration: InputDecoration(
                hintText: 'Enter the year',
                errorText: _isError ? 'please enter a number' : null,
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
            ),
            FlatButton(
              onPressed: !_filterPressed ? _searchItems : _restoreItems,
              color: Colors.grey,
              child: Text(
                !_filterPressed ? 'Filter' : 'Clear',
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(8.0),
                itemCount: _movies.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 160,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                '${_movies[index].cover}',
                                scale: 2.4,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              AutoSizeText(
                                _movies[index].title,
                                maxLines: 3,
                                minFontSize: 1,
                                maxFontSize: 24,
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                'Year: ${_movies[index].year}',
                                style: const TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                'Runtime: ${_movies[index].runTime}',
                                style: const TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                'Rating: ${_movies[index].rating}',
                                style: const TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Movie {
  Movie(
      {@required this.id,
      @required this.title,
      @required this.year,
      @required this.runTime,
      @required this.rating,
      @required this.cover});

  factory Movie.fromJson(dynamic item) {
    return Movie(
      id: item['id'],
      title: item['title'],
      year: item['year'],
      runTime: item['runtime'],
      rating: item['rating'],
      cover: item['small_cover_image'],
    );
  }

  final int id;
  final String title;
  final int year;
  final int runTime;
  final num rating;
  final String cover;

  @override
  String toString() {
    return 'Movie{id: $id, title: $title, year: $year, runTime: $runTime, '
        'rating: $rating, cover: $cover}';
  }
}
