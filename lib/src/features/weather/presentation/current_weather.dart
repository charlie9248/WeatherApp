import 'package:flutter/material.dart';
import 'package:open_weather_example_flutter/src/features/enums/enum_network_status.dart';
import 'package:open_weather_example_flutter/src/features/weather/application/providers.dart';
import 'package:open_weather_example_flutter/src/features/weather/presentation/weather_icon_image.dart';
import 'package:provider/provider.dart';

import '../../../model/weather_data.dart';

class CurrentWeather extends StatelessWidget {
  const CurrentWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<WeatherProvider, (String city, WeatherData? weatherData ,LoadingState networkState)>(
        selector: (context, provider ) => (provider.city, provider.currentWeatherProvider , provider.networkState),
        builder: (context, data, _) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(data.$1, style: Theme.of(context).textTheme.headlineMedium),
              //TODO account for null, errors and loading states
              data.$3 == LoadingState.loading || data.$2 == null?  CircularProgressIndicator()
              : CurrentWeatherContents(data: data.$2!!),
            ],
          );
        });
  }
}

class CurrentWeatherContents extends StatelessWidget {
  const CurrentWeatherContents({super.key, required this.data});

  final WeatherData? data;
  final imageBaseUrl =  "http://openweathermap.org/img/w/10d.png";

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final temp = data!.main!.temp!.toInt().toString();
    final minTemp = data?.main!.temp_min!.toInt().toString();
    final maxTemp = data?.main!.temp_min!.toInt().toString();
    final highAndLow = 'H:$maxTemp° L:$minTemp°';
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
       WeatherIconImage(iconUrl: "${"http://openweathermap.org/img/w/${data?.weather![0].icon.toString()}.png"}" , size: 120),
        Text(temp!, style: textTheme.displayMedium),
        Text(highAndLow, style: textTheme.bodyMedium),
      ],
    );
  }
}
