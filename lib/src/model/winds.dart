import 'package:freezed_annotation/freezed_annotation.dart';

part 'winds.freezed.dart';
part 'winds.g.dart';
@freezed
class Wind with _$Wind {
  const factory Wind({
    double? speed,
    int? deg,
  }) = _Wind;

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}