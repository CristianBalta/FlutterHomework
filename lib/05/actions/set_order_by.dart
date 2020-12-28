library set_order_by;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_order_by.freezed.dart';

@freezed
abstract class SetOrderBy with _$SetOrderBy {
  const factory SetOrderBy(String orderBy) = _SetOrderBy;
}
