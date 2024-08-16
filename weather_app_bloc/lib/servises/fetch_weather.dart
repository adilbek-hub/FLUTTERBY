import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:weather_app_bloc/constants/api_const.dart';
import 'package:weather_app_bloc/model/weather_response.dart';

class WeatherService {
  final client = http.Client();

  ///[cityName] alyp oshol shaardyn aba yrayin beret
  Future<WeatherResponce?> getWeatherByCityName(String cityName) async {
    /// [uri] uri tuzup aldyk
    final uri = Uri.parse(ApiConst.weatherByCityName(cityName));
    try {
      /// bir endPointke request jiberip jatat
      final response = await client.get(uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final weather = WeatherResponce.fromJson(response.body);
        return weather;
      }
      print('response.statusCode methodu ${response.statusCode}');
      return null;
    } catch (e) {
      print('getWeatherByCityName methodto kata bar $e');
    }
    return null;

    // koldonuuchudan shaardyn atyn alat
    //uri tuzot
    //uri request jiberet
    //responce status codun teksheret
    //status code 200 je 201 bolso model kaytarat
    //eger kata bar bolso null kaytarat
  }
}

final weatherService = WeatherService();
