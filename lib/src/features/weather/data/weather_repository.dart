import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

import '../../../api/api.dart';
import '../../../api/api_keys.dart';
import '../../../model/forecast_data.dart';
import '../../../model/weather_data.dart';
import 'api_exception.dart';

class HttpWeatherRepository {
  final OpenWeatherMapAPI api;
  final dynamic client;

  HttpWeatherRepository({
    required this.api,
     required this.client,
  });



  Future<WeatherData> getWeather(String city) async {

    final response = await client.get(api.weather(city));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);

      return WeatherData.fromJson(data);
    } else {
      throw CityNotFoundException();
    }
  }


  Future<ForecastData> forecastData(String city) async {

    final response = await client.get(api.forecast(city));
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);


      return ForecastData.fromJson(data);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
