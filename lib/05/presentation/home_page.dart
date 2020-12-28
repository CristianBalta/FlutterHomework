import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_homework/05/actions/get_movies.dart';
import 'package:flutter_homework/05/actions/set_genres.dart';
import 'package:flutter_homework/05/actions/set_order_by.dart';
import 'package:flutter_homework/05/actions/set_quality.dart';
import 'package:flutter_homework/05/containers/genres_container.dart';
import 'package:flutter_homework/05/containers/is_loading_container.dart';
import 'package:flutter_homework/05/containers/movies_container.dart';
import 'package:flutter_homework/05/containers/order_by_container.dart';
import 'package:flutter_homework/05/containers/quality_container.dart';
import 'package:flutter_homework/05/models/app_state.dart';
import 'package:flutter_homework/05/models/movie.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/src/store.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IsLoadingContainer(
      builder: (BuildContext context, bool isLoading) {
        return MoviesContainer(
          builder: (BuildContext context, List<Movie> movies) {
            return Scaffold(
              appBar: AppBar(
                actions: <Widget>[
                  OrderByContainer(
                    builder: (BuildContext context, String orderBy) {
                      return IconButton(
                        icon: Icon(orderBy == 'desc' ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up),
                        onPressed: () {
                          final Store<AppState> store = StoreProvider.of<AppState>(context);

                          if (orderBy == 'desc') {
                            store.dispatch(const SetOrderBy('asc'));
                          } else {
                            store.dispatch(const SetOrderBy('desc'));
                          }

                          store.dispatch(const GetMovies.start(1));
                        },
                      );
                    },
                  ),
                ],
              ),
              body: Builder(
                builder: (BuildContext context) {
                  if (isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  return Column(
                    children: <Widget>[
                      GenresContainer(
                        builder: (BuildContext context, List<String> genres) {
                          return Wrap(
                            spacing: 8.0,
                            children: <String>[
                              'Comedy',
                              'Sci-Fi',
                              'Horror',
                              'Romance',
                              'Action',
                              'Thriller',
                              'Drama',
                              'Mystery',
                              'Crime',
                              'Animation',
                              'Adventure',
                              'Fantasy',
                              'Comedy-Romance',
                              'Action-Comedy',
                              'Superhero',
                            ].map((String genre) {
                              return ChoiceChip(
                                label: Text(genre),
                                selected: genres.contains(genre),
                                onSelected: (bool isSelected) {
                                  if (isSelected) {
                                    StoreProvider.of<AppState>(context)
                                      ..dispatch(SetGenres(<String>[genre]))
                                      ..dispatch(const GetMovies.start(1));
                                  } else {
                                    StoreProvider.of<AppState>(context)
                                      ..dispatch(const SetGenres(<String>[]))
                                      ..dispatch(const GetMovies.start(1));
                                  }
                                },
                              );
                            }).toList(),
                          );
                        },
                      ),
                      QualityContainer(
                        builder: (BuildContext context, String quality) {
                          return DropdownButton<String>(
                            value: quality,
                            hint: const Text('All'),
                            onChanged: (String value) {
                              StoreProvider.of<AppState>(context)
                                ..dispatch(SetQuality(value))
                                ..dispatch(const GetMovies.start(1));
                            },
                            items: <String>[null, '720p', '1080p', '2160p', '3D'].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value ?? 'All'),
                              );
                            }).toList(),
                          );
                        },
                      ),
                      Expanded(
                        child: GridView.builder(
                          padding: const EdgeInsets.all(8.0).copyWith(bottom: 56.0),
                          itemCount: movies.length,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 8.0,
                            crossAxisSpacing: 8.0,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            final Movie movie = movies[index];

                            return Stack(
                              children: <Widget>[
                                GridTile(
                                  child: Image.network(movie.mediumCover),
                                  footer: GridTileBar(
                                    title: Text(movie.title),
                                  ),
                                ),
                                Text(
                                  '$index',
                                  style: const TextStyle(color: Colors.red),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      FlatButton(
                        child: const Text('Load more'),
                        onPressed: () {
                          final Store<AppState> store = StoreProvider.of<AppState>(context);
                          store.dispatch(GetMovies.start(store.state.page));
                        },
                      ),
                    ],
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
