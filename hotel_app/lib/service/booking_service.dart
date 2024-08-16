import 'package:http/http.dart' as http;
import 'package:hotel_app/model/model_export.dart';

class BookingService {
  const BookingService({required this.client});
  final http.Client client;
  Future<BookingModel?> getData() async {
    try {
      final response = await http.get(
        Uri.parse(
            'http://run.mocky.io/v3/e8868481-743f-4eb2-a0d7-2bc4012275c8'),
      );

      if (response.statusCode == 200) {
        final data = bookingNumberFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      throw ('Кештен ката: ${e.toString()}');
    }
  }
}

final bookingService = BookingService(
  client: http.Client(),
);
