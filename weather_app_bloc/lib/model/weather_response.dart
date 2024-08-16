import 'dart:convert';

import 'package:weather_app_bloc/model/main_model.dart';
import 'package:weather_app_bloc/model/weather.dart';

class WeatherResponce {
  WeatherResponce({
    required this.weather,
    required this.main,
    required this.name,
  });
  final List<Weather> weather;
  final Main main;
  final String name;

  factory WeatherResponce.fromMap(Map<String, dynamic> map) {
    return WeatherResponce(
      weather:
          List<Weather>.from(map['weather']?.map((x) => Weather.fromJson(x))),
      main: Main.fromJson(map['main']),
      name: map['name'] ?? '',
    );
  }

  factory WeatherResponce.fromJson(String source) =>
      WeatherResponce.fromMap(json.decode(source));
}
