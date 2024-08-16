import 'package:http/http.dart' as http;
import 'package:hotel_app/model/model_export.dart';

class HotelService {
  const HotelService({required this.client});
  final http.Client client;
  Future<HotelModel?> getData() async {
    try {
      final response = await http.get(
        Uri.parse(
            'http://run.mocky.io/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3'),
      );

      if (response.statusCode == 200) {
        final data = hotelFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      throw ('Кештен ката: ${e.toString()}');
    }
  }
}

final hotelService = HotelService(
  client: http.Client(),
);
