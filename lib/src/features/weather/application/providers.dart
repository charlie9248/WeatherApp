import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:open_weather_example_flutter/src/api/api.dart';
import 'package:open_weather_example_flutter/src/api/api_keys.dart';
import 'package:open_weather_example_flutter/src/features/enums/enum_network_status.dart';
import 'package:open_weather_example_flutter/src/features/weather/data/weather_repository.dart';
import 'package:http/http.dart' as http;
import '../../../model/forecast_data.dart';
import '../../../model/weather_data.dart';

class WeatherProvider extends ChangeNotifier {
  HttpWeatherRepository repository = HttpWeatherRepository(
    api: OpenWeatherMapAPI(sl<String>(instanceName: 'api_key')),
    client: http.Client(),
  );

  String city = 'London';
  WeatherData? currentWeatherProvider;
  ForecastData? hourlyWeatherProvider;
  late LoadingState networkState ;

  Future<void> getWeatherData() async {
    networkState = LoadingState.loading;
    try{
      final weather = await repository.getWeather(city);
      //TODO set the weather and fetch forecast after
      currentWeatherProvider = weather;
      networkState = LoadingState.success;
      notifyListeners();
    }
    catch(e){
      networkState = LoadingState.error;
      notifyListeners();
    }
  }

  Future<void> getForecastData () async {
    networkState = LoadingState.loading;
    try{
      //TODO set the forecast
      final forecast = await repository.forecastData(city);
      hourlyWeatherProvider = forecast;

      notifyListeners();
      networkState = LoadingState.success;
    }
    catch(e){
      networkState = LoadingState.error;
      notifyListeners();
    }
  }
}
