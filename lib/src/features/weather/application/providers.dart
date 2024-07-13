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

  HttpWeatherRepository repository = sl.get<HttpWeatherRepository>();

  String city = 'London';

  WeatherData? _currentWeatherProvider;
  ForecastData? _hourlyWeatherProvider;
  LoadingState _networkState = LoadingState.loading;


  WeatherData? get currentWeatherProvider => _currentWeatherProvider;
  ForecastData? get hourlyWeatherProvider => _hourlyWeatherProvider;
  LoadingState get networkState => _networkState;

  Future<void> getWeatherData() async {
    _networkState = LoadingState.loading;
    try{
      final weather = await repository.getWeather(city);
      //TODO set the weather and fetch forecast after
      _currentWeatherProvider = weather;
      _networkState = LoadingState.success;
      notifyListeners();
    }
    catch(e){
      _networkState = LoadingState.error;
      notifyListeners();
    }
  }

  Future<void> getForecastData () async {
    _networkState = LoadingState.loading;
    try{
      //TODO set the forecast
      final forecast = await repository.forecastData(city);
      _hourlyWeatherProvider = forecast;

      notifyListeners();
      _networkState = LoadingState.success;
    }
    catch(e){
      _networkState = LoadingState.error;
      notifyListeners();
    }
  }
}
