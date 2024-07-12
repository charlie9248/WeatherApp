// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastDataImpl _$$ForecastDataImplFromJson(Map<String, dynamic> json) =>
    _$ForecastDataImpl(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => Forecast.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ForecastDataImplToJson(_$ForecastDataImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
