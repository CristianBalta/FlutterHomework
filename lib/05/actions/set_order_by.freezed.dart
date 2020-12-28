// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of set_order_by;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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
