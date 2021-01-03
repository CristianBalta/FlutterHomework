import 'package:flutter_homework/05/actions/index.dart';
import 'package:flutter_homework/05/data/yts_api.dart';
import 'package:flutter_homework/05/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AppEpics {
  const AppEpics({@required YtsApi ytsApi})
      : assert(ytsApi != null),
        _ytsApi = ytsApi;

  final YtsApi _ytsApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetMoviesStart>(_getMoviesStart),
    ]);
  }

  Stream<dynamic> _getMoviesStart(Stream<GetMoviesStart> actions, EpicStore<AppState> store) {
    return actions //
        .asyncMap((GetMoviesStart action) {
          return _ytsApi.getMovies(
            action.page,
            store.state.quality,
            store.state.genres.asList(),
            store.state.orderBy,
          );
        })
        .map((List<Movie> movies) => GetMovies.successful(movies))
        .onErrorReturnWith((dynamic error) => GetMovies.error(error));
  }
}
