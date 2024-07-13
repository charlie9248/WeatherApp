import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import '../features/weather/application/providers.dart';
import '../features/weather/data/weather_repository.dart';
import 'api.dart';

/// To get an API key, sign up here:
/// https://home.openweathermap.org/users/sign_up
///

final sl = GetIt.instance;

void setupInjection() {
  //TODO setup injection using 'api_key' instance name. Refer to https://pub.dev/packages/get_it for documentation

  sl.registerLazySingleton<http.Client>(() => http.Client());

  sl.registerLazySingleton<OpenWeatherMapAPI>(() => OpenWeatherMapAPI("df26312b7a815952a449f5cc6d62b3c9"));

  sl.registerLazySingleton<HttpWeatherRepository>(
          () => HttpWeatherRepository(
        api: sl<OpenWeatherMapAPI>(),
        client: sl<http.Client>(),
      ));
}
