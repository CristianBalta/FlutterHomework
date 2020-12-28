import 'package:flutter/material.dart';
import 'package:flutter_homework/05/models/app_state.dart';
import 'package:flutter_homework/05/models/movie.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:redux/src/store.dart';

class MoviesContainer extends StatelessWidget {
  const MoviesContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Movie>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Movie>>(
      converter: (Store<AppState> store) => store.state.movies.asList(),
      builder: builder,
    );
  }
}
