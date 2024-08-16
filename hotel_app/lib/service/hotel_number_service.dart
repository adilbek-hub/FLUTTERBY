import 'package:http/http.dart' as http;
import 'package:hotel_app/model/model_export.dart';

class HotelNumberService {
  const HotelNumberService({required this.client});
  final http.Client client;
  Future<HotelNumberModel?> getData() async {
    try {
      final response = await http.get(
        Uri.parse(
            'http://run.mocky.io/v3/f9a38183-6f95-43aa-853a-9c83cbb05ecd'),
      );

      if (response.statusCode == 200) {
        final data = hotelNumberFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      throw ('Кештен ката: ${e.toString()}');
    }
  }
}

final hotelNumberService = HotelNumberService(
  client: http.Client(),
);
