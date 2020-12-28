// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of set_genres;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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
