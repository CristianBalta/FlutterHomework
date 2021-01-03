// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GetMoviesTearOff {
  const _$GetMoviesTearOff();

// ignore: unused_element
  GetMoviesStart start(int page) {
    return GetMoviesStart(
      page,
    );
  }

// ignore: unused_element
  GetMoviesSuccessful successful(List<Movie> movies) {
    return GetMoviesSuccessful(
      movies,
    );
  }

// ignore: unused_element
  GetMoviesError error(dynamic error) {
    return GetMoviesError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetMovies = _$GetMoviesTearOff();

/// @nodoc
mixin _$GetMovies {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(int page),
    @required Result successful(List<Movie> movies),
    @required Result error(dynamic error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(int page),
    Result successful(List<Movie> movies),
    Result error(dynamic error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetMoviesStart value),
    @required Result successful(GetMoviesSuccessful value),
    @required Result error(GetMoviesError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetMoviesStart value),
    Result successful(GetMoviesSuccessful value),
    Result error(GetMoviesError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetMoviesCopyWith<$Res> {
  factory $GetMoviesCopyWith(GetMovies value, $Res Function(GetMovies) then) = _$GetMoviesCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetMoviesCopyWithImpl<$Res> implements $GetMoviesCopyWith<$Res> {
  _$GetMoviesCopyWithImpl(this._value, this._then);

  final GetMovies _value;
  // ignore: unused_field
  final $Res Function(GetMovies) _then;
}

/// @nodoc
abstract class $GetMoviesStartCopyWith<$Res> {
  factory $GetMoviesStartCopyWith(GetMoviesStart value, $Res Function(GetMoviesStart) then) =
      _$GetMoviesStartCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class _$GetMoviesStartCopyWithImpl<$Res> extends _$GetMoviesCopyWithImpl<$Res>
    implements $GetMoviesStartCopyWith<$Res> {
  _$GetMoviesStartCopyWithImpl(GetMoviesStart _value, $Res Function(GetMoviesStart) _then)
      : super(_value, (v) => _then(v as GetMoviesStart));

  @override
  GetMoviesStart get _value => super._value as GetMoviesStart;

  @override
  $Res call({
    Object page = freezed,
  }) {
    return _then(GetMoviesStart(
      page == freezed ? _value.page : page as int,
    ));
  }
}

/// @nodoc
class _$GetMoviesStart implements GetMoviesStart {
  const _$GetMoviesStart(this.page) : assert(page != null);

  @override
  final int page;

  @override
  String toString() {
    return 'GetMovies.start(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMoviesStart &&
            (identical(other.page, page) || const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @override
  $GetMoviesStartCopyWith<GetMoviesStart> get copyWith =>
      _$GetMoviesStartCopyWithImpl<GetMoviesStart>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(int page),
    @required Result successful(List<Movie> movies),
    @required Result error(dynamic error),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return start(page);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(int page),
    Result successful(List<Movie> movies),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetMoviesStart value),
    @required Result successful(GetMoviesSuccessful value),
    @required Result error(GetMoviesError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return start(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetMoviesStart value),
    Result successful(GetMoviesSuccessful value),
    Result error(GetMoviesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class GetMoviesStart implements GetMovies {
  const factory GetMoviesStart(int page) = _$GetMoviesStart;

  int get page;
  $GetMoviesStartCopyWith<GetMoviesStart> get copyWith;
}

/// @nodoc
abstract class $GetMoviesSuccessfulCopyWith<$Res> {
  factory $GetMoviesSuccessfulCopyWith(GetMoviesSuccessful value, $Res Function(GetMoviesSuccessful) then) =
      _$GetMoviesSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Movie> movies});
}

/// @nodoc
class _$GetMoviesSuccessfulCopyWithImpl<$Res> extends _$GetMoviesCopyWithImpl<$Res>
    implements $GetMoviesSuccessfulCopyWith<$Res> {
  _$GetMoviesSuccessfulCopyWithImpl(GetMoviesSuccessful _value, $Res Function(GetMoviesSuccessful) _then)
      : super(_value, (v) => _then(v as GetMoviesSuccessful));

  @override
  GetMoviesSuccessful get _value => super._value as GetMoviesSuccessful;

  @override
  $Res call({
    Object movies = freezed,
  }) {
    return _then(GetMoviesSuccessful(
      movies == freezed ? _value.movies : movies as List<Movie>,
    ));
  }
}

/// @nodoc
class _$GetMoviesSuccessful implements GetMoviesSuccessful {
  const _$GetMoviesSuccessful(this.movies) : assert(movies != null);

  @override
  final List<Movie> movies;

  @override
  String toString() {
    return 'GetMovies.successful(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMoviesSuccessful &&
            (identical(other.movies, movies) || const DeepCollectionEquality().equals(other.movies, movies)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(movies);

  @override
  $GetMoviesSuccessfulCopyWith<GetMoviesSuccessful> get copyWith =>
      _$GetMoviesSuccessfulCopyWithImpl<GetMoviesSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(int page),
    @required Result successful(List<Movie> movies),
    @required Result error(dynamic error),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return successful(movies);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(int page),
    Result successful(List<Movie> movies),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetMoviesStart value),
    @required Result successful(GetMoviesSuccessful value),
    @required Result error(GetMoviesError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetMoviesStart value),
    Result successful(GetMoviesSuccessful value),
    Result error(GetMoviesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetMoviesSuccessful implements GetMovies {
  const factory GetMoviesSuccessful(List<Movie> movies) = _$GetMoviesSuccessful;

  List<Movie> get movies;
  $GetMoviesSuccessfulCopyWith<GetMoviesSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetMoviesErrorCopyWith<$Res> {
  factory $GetMoviesErrorCopyWith(GetMoviesError value, $Res Function(GetMoviesError) then) =
      _$GetMoviesErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$GetMoviesErrorCopyWithImpl<$Res> extends _$GetMoviesCopyWithImpl<$Res>
    implements $GetMoviesErrorCopyWith<$Res> {
  _$GetMoviesErrorCopyWithImpl(GetMoviesError _value, $Res Function(GetMoviesError) _then)
      : super(_value, (v) => _then(v as GetMoviesError));

  @override
  GetMoviesError get _value => super._value as GetMoviesError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetMoviesError(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

/// @nodoc
class _$GetMoviesError implements GetMoviesError {
  const _$GetMoviesError(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'GetMovies.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMoviesError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetMoviesErrorCopyWith<GetMoviesError> get copyWith =>
      _$GetMoviesErrorCopyWithImpl<GetMoviesError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(int page),
    @required Result successful(List<Movie> movies),
    @required Result error(dynamic error),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(int page),
    Result successful(List<Movie> movies),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetMoviesStart value),
    @required Result successful(GetMoviesSuccessful value),
    @required Result error(GetMoviesError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetMoviesStart value),
    Result successful(GetMoviesSuccessful value),
    Result error(GetMoviesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetMoviesError implements GetMovies {
  const factory GetMoviesError(dynamic error) = _$GetMoviesError;

  dynamic get error;
  $GetMoviesErrorCopyWith<GetMoviesError> get copyWith;
}

/// @nodoc
class _$SetGenresTearOff {
  const _$SetGenresTearOff();

// ignore: unused_element
  _SetGenres call(List<String> genres) {
    return _SetGenres(
      genres,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetGenres = _$SetGenresTearOff();

/// @nodoc
mixin _$SetGenres {
  List<String> get genres;

  $SetGenresCopyWith<SetGenres> get copyWith;
}

/// @nodoc
abstract class $SetGenresCopyWith<$Res> {
  factory $SetGenresCopyWith(SetGenres value, $Res Function(SetGenres) then) = _$SetGenresCopyWithImpl<$Res>;
  $Res call({List<String> genres});
}

/// @nodoc
class _$SetGenresCopyWithImpl<$Res> implements $SetGenresCopyWith<$Res> {
  _$SetGenresCopyWithImpl(this._value, this._then);

  final SetGenres _value;
  // ignore: unused_field
  final $Res Function(SetGenres) _then;

  @override
  $Res call({
    Object genres = freezed,
  }) {
    return _then(_value.copyWith(
      genres: genres == freezed ? _value.genres : genres as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$SetGenresCopyWith<$Res> implements $SetGenresCopyWith<$Res> {
  factory _$SetGenresCopyWith(_SetGenres value, $Res Function(_SetGenres) then) = __$SetGenresCopyWithImpl<$Res>;
  @override
  $Res call({List<String> genres});
}

/// @nodoc
class __$SetGenresCopyWithImpl<$Res> extends _$SetGenresCopyWithImpl<$Res> implements _$SetGenresCopyWith<$Res> {
  __$SetGenresCopyWithImpl(_SetGenres _value, $Res Function(_SetGenres) _then)
      : super(_value, (v) => _then(v as _SetGenres));

  @override
  _SetGenres get _value => super._value as _SetGenres;

  @override
  $Res call({
    Object genres = freezed,
  }) {
    return _then(_SetGenres(
      genres == freezed ? _value.genres : genres as List<String>,
    ));
  }
}

/// @nodoc
class _$_SetGenres implements _SetGenres {
  const _$_SetGenres(this.genres) : assert(genres != null);

  @override
  final List<String> genres;

  @override
  String toString() {
    return 'SetGenres(genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetGenres &&
            (identical(other.genres, genres) || const DeepCollectionEquality().equals(other.genres, genres)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(genres);

  @override
  _$SetGenresCopyWith<_SetGenres> get copyWith => __$SetGenresCopyWithImpl<_SetGenres>(this, _$identity);
}

abstract class _SetGenres implements SetGenres {
  const factory _SetGenres(List<String> genres) = _$_SetGenres;

  @override
  List<String> get genres;
  @override
  _$SetGenresCopyWith<_SetGenres> get copyWith;
}

/// @nodoc
class _$SetOrderByTearOff {
  const _$SetOrderByTearOff();

// ignore: unused_element
  _SetOrderBy call(String orderBy) {
    return _SetOrderBy(
      orderBy,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetOrderBy = _$SetOrderByTearOff();

/// @nodoc
mixin _$SetOrderBy {
  String get orderBy;

  $SetOrderByCopyWith<SetOrderBy> get copyWith;
}

/// @nodoc
abstract class $SetOrderByCopyWith<$Res> {
  factory $SetOrderByCopyWith(SetOrderBy value, $Res Function(SetOrderBy) then) = _$SetOrderByCopyWithImpl<$Res>;
  $Res call({String orderBy});
}

/// @nodoc
class _$SetOrderByCopyWithImpl<$Res> implements $SetOrderByCopyWith<$Res> {
  _$SetOrderByCopyWithImpl(this._value, this._then);

  final SetOrderBy _value;
  // ignore: unused_field
  final $Res Function(SetOrderBy) _then;

  @override
  $Res call({
    Object orderBy = freezed,
  }) {
    return _then(_value.copyWith(
      orderBy: orderBy == freezed ? _value.orderBy : orderBy as String,
    ));
  }
}

/// @nodoc
abstract class _$SetOrderByCopyWith<$Res> implements $SetOrderByCopyWith<$Res> {
  factory _$SetOrderByCopyWith(_SetOrderBy value, $Res Function(_SetOrderBy) then) = __$SetOrderByCopyWithImpl<$Res>;
  @override
  $Res call({String orderBy});
}

/// @nodoc
class __$SetOrderByCopyWithImpl<$Res> extends _$SetOrderByCopyWithImpl<$Res> implements _$SetOrderByCopyWith<$Res> {
  __$SetOrderByCopyWithImpl(_SetOrderBy _value, $Res Function(_SetOrderBy) _then)
      : super(_value, (v) => _then(v as _SetOrderBy));

  @override
  _SetOrderBy get _value => super._value as _SetOrderBy;

  @override
  $Res call({
    Object orderBy = freezed,
  }) {
    return _then(_SetOrderBy(
      orderBy == freezed ? _value.orderBy : orderBy as String,
    ));
  }
}

/// @nodoc
class _$_SetOrderBy implements _SetOrderBy {
  const _$_SetOrderBy(this.orderBy) : assert(orderBy != null);

  @override
  final String orderBy;

  @override
  String toString() {
    return 'SetOrderBy(orderBy: $orderBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetOrderBy &&
            (identical(other.orderBy, orderBy) || const DeepCollectionEquality().equals(other.orderBy, orderBy)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(orderBy);

  @override
  _$SetOrderByCopyWith<_SetOrderBy> get copyWith => __$SetOrderByCopyWithImpl<_SetOrderBy>(this, _$identity);
}

abstract class _SetOrderBy implements SetOrderBy {
  const factory _SetOrderBy(String orderBy) = _$_SetOrderBy;

  @override
  String get orderBy;
  @override
  _$SetOrderByCopyWith<_SetOrderBy> get copyWith;
}

/// @nodoc
class _$SetQualityTearOff {
  const _$SetQualityTearOff();

// ignore: unused_element
  _SetQuality call(@nullable String quality) {
    return _SetQuality(
      quality,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetQuality = _$SetQualityTearOff();

/// @nodoc
mixin _$SetQuality {
  @nullable
  String get quality;

  $SetQualityCopyWith<SetQuality> get copyWith;
}

/// @nodoc
abstract class $SetQualityCopyWith<$Res> {
  factory $SetQualityCopyWith(SetQuality value, $Res Function(SetQuality) then) = _$SetQualityCopyWithImpl<$Res>;
  $Res call({@nullable String quality});
}

/// @nodoc
class _$SetQualityCopyWithImpl<$Res> implements $SetQualityCopyWith<$Res> {
  _$SetQualityCopyWithImpl(this._value, this._then);

  final SetQuality _value;
  // ignore: unused_field
  final $Res Function(SetQuality) _then;

  @override
  $Res call({
    Object quality = freezed,
  }) {
    return _then(_value.copyWith(
      quality: quality == freezed ? _value.quality : quality as String,
    ));
  }
}

/// @nodoc
abstract class _$SetQualityCopyWith<$Res> implements $SetQualityCopyWith<$Res> {
  factory _$SetQualityCopyWith(_SetQuality value, $Res Function(_SetQuality) then) = __$SetQualityCopyWithImpl<$Res>;
  @override
  $Res call({@nullable String quality});
}

/// @nodoc
class __$SetQualityCopyWithImpl<$Res> extends _$SetQualityCopyWithImpl<$Res> implements _$SetQualityCopyWith<$Res> {
  __$SetQualityCopyWithImpl(_SetQuality _value, $Res Function(_SetQuality) _then)
      : super(_value, (v) => _then(v as _SetQuality));

  @override
  _SetQuality get _value => super._value as _SetQuality;

  @override
  $Res call({
    Object quality = freezed,
  }) {
    return _then(_SetQuality(
      quality == freezed ? _value.quality : quality as String,
    ));
  }
}

/// @nodoc
class _$_SetQuality implements _SetQuality {
  const _$_SetQuality(@nullable this.quality);

  @override
  @nullable
  final String quality;

  @override
  String toString() {
    return 'SetQuality(quality: $quality)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetQuality &&
            (identical(other.quality, quality) || const DeepCollectionEquality().equals(other.quality, quality)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(quality);

  @override
  _$SetQualityCopyWith<_SetQuality> get copyWith => __$SetQualityCopyWithImpl<_SetQuality>(this, _$identity);
}

abstract class _SetQuality implements SetQuality {
  const factory _SetQuality(@nullable String quality) = _$_SetQuality;

  @override
  @nullable
  String get quality;
  @override
  _$SetQualityCopyWith<_SetQuality> get copyWith;
}
