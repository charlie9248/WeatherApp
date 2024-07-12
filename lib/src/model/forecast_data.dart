import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:open_weather_example_flutter/src/model/forecast.dart';
import 'package:open_weather_example_flutter/src/model/weather.dart';

part 'forecast_data.freezed.dart';
part 'forecast_data.g.dart';

@freezed
class ForecastData with _$ForecastData {
   const factory ForecastData({
      List<Forecast>? list,
   }) = _ForecastData;

   factory ForecastData.fromJson(Map<String, dynamic> json) => _$ForecastDataFromJson(json);
}
