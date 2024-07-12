import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:open_weather_example_flutter/src/model/weather_data.dart';
import 'package:provider/provider.dart';

import '../../../model/forecast_data.dart';
import '../../enums/enum_network_status.dart';
import '../application/providers.dart';

class ForecastListScreen extends StatelessWidget {
  const ForecastListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Selector<
                WeatherProvider,
                (
                  String city,
                ForecastData? weatherData,
                  LoadingState networkState
                )>(
            selector: (context, provider) => (
                  provider.city,
                  provider.hourlyWeatherProvider,
                  provider.networkState
                ),
            builder: (context, data, _) {
              return data.$3 == LoadingState.loading || data.$2 == null
                  ?  CircularProgressIndicator()
                  : forecastList(data.$2!!);

            }));
  }

  Widget forecastList(ForecastData data) {
    return SizedBox(
      height:300,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 30,
          itemBuilder: (context, index) {
            DateTime forecastDate = DateTime.parse(data.list![index].dt_txt ?? 'N/A');
            bool isCurrentDate = DateTime.now().day == forecastDate.day &&
                DateTime.now().month == forecastDate.month &&
                DateTime.now().year == forecastDate.year;
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    left: 1.8,
                    right: 1.8,
                  ),
                  child: Column(
                    children: [
                      Text(
                        DateFormat('EEE').format(
                          DateTime.parse(data.list![index].dt_txt ?? 'N/A'),
                        ),

                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        DateFormat('dd/MM').format(
                          DateTime.parse(data.list![index].dt_txt ?? 'N/A'),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        DateFormat('HH:mm').format(
                          DateTime.parse(data.list![0].dt_txt ?? 'N/A'),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Image.network(
                          "${"http://openweathermap.org/img/w/${data.list![0].weather![0].icon}.png"}"),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(

                          "",

                      ),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
      ),
    );
  }
}
