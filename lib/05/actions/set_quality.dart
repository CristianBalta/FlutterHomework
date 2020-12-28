library set_quality;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_quality.freezed.dart';

@freezed
abstract class SetQuality with _$SetQuality {
  const factory SetQuality(@nullable String quality) = _SetQuality;
}
