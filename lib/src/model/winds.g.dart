// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'winds.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WindImpl _$$WindImplFromJson(Map<String, dynamic> json) => _$WindImpl(
      speed: (json['speed'] as num?)?.toDouble(),
      deg: json['deg'] as int?,
    );

Map<String, dynamic> _$$WindImplToJson(_$WindImpl instance) =>
    <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
    };
