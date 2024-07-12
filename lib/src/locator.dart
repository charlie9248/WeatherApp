import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'api/api.dart';
import 'features/weather/data/weather_repository.dart';

var locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<OpenWeatherMapAPI>(() => OpenWeatherMapAPI('df26312b7a815952a449f5cc6d62b3c9'));

  locator.registerLazySingleton<http.Client>(() => http.Client());

  locator.registerLazySingleton<HttpWeatherRepository>(
          () => HttpWeatherRepository(
        api: locator<OpenWeatherMapAPI>(),
        client: locator<http.Client>(),
      ));
}