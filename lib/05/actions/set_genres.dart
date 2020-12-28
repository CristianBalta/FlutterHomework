library set_genres;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_genres.freezed.dart';

@freezed
abstract class SetGenres with _$SetGenres {
  const factory SetGenres(List<String> genres) = _SetGenres;
}
