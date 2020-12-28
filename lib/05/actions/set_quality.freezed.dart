// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of set_quality;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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
