import 'package:http/http.dart' as http;
import 'package:weather_app_bloc2/constants/api_const.dart';
import 'package:weather_app_bloc2/model/weather_response.dart';

class WeatherRepo {
  final client = http.Client();
  Future<WeatherResponse?> getWeatherByCityName(String cityName) async {
    final uri = Uri.parse(ApiConst.weatherByCityName(cityName));
    try {
      final response = await client.get(uri);
      if (response.statusCode == 200 && response.statusCode == 201) {
        final weather = WeatherResponse.fromJson(response.body);
        return weather;
      } else {
        return null;
      }
    } catch (e) {
      print('Bul methodto kata bar $e');
    }
    return null;
  }
}
