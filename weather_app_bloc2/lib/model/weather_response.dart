import 'dart:convert';

import 'main_model.dart';
import 'weather.dart';

class WeatherResponse {
  WeatherResponse({
    required this.weather,
    required this.main,
    required this.name,
  });
  final List<Weather> weather;
  final Main main;
  final String name;

  factory WeatherResponse.fromMap(Map<String, dynamic> map) {
    return WeatherResponse(
      weather:
          List<Weather>.from(map['weather']?.map((x) => Weather.fromMap(x))),
      main: Main.fromMap(map['main']),
      name: map['name'] ?? '',
    );
  }

  factory WeatherResponse.fromJson(String source) =>
      WeatherResponse.fromMap(json.decode(source));
}
