import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WeatherIconImage extends StatelessWidget {
  const WeatherIconImage(
      {super.key, required this.iconUrl, required this.size});
  final String iconUrl;
  final double size;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: getWeatherIcon(iconUrl),
      width: size,
      height: size,
    );
  }



   getWeatherIcon(String url) {
    return 'http://openweathermap.org/img/w/$url.png';
  }


}
