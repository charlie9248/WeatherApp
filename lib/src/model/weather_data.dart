import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:open_weather_example_flutter/src/model/clouds.dart';
import 'package:open_weather_example_flutter/src/model/main.dart';
import 'package:open_weather_example_flutter/src/model/sys.dart';
import 'package:open_weather_example_flutter/src/model/weather.dart';
import 'package:open_weather_example_flutter/src/model/winds.dart';

import 'coord.dart';

part 'weather_data.freezed.dart';
part 'weather_data.g.dart';

@freezed
class WeatherData with _$WeatherData {
  const factory WeatherData({
     Coord? coord,
     List<Weather>? weather,
     String? base,
     Main? main,
     int? visibility,
     Wind? wind,
     Clouds? clouds,
     int? dt,
     Sys? sys,
     int? timezone,
     int? id,
     String? name,
     dynamic? cod,
  }) = _WeatherData;

  factory WeatherData.fromJson(Map<String, dynamic> json) => _$WeatherDataFromJson(json);
}










