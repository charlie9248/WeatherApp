import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:open_weather_example_flutter/src/model/clouds.dart';
import 'package:open_weather_example_flutter/src/model/main.dart';
import 'package:open_weather_example_flutter/src/model/sys.dart';
import 'package:open_weather_example_flutter/src/model/weather.dart';
import 'package:open_weather_example_flutter/src/model/winds.dart';

part 'forecast.freezed.dart';
part 'forecast.g.dart';

@freezed
class Forecast with _$Forecast {
  const factory Forecast({
     int? dt,
     Main? main,
     List<Weather>? weather,
     Clouds? clouds,
     Wind? wind,
     int? visibility,
     num? pop,
     Sys? sys,
     String? dt_txt,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
}