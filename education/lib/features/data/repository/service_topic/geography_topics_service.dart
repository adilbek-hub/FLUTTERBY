import 'package:education/features/data/model/geography_model.dart';
import 'package:http/http.dart' as http;

class GeograhyTopicsService {
  const GeograhyTopicsService({required this.client});
  final http.Client client;
  Future<List<GeographyTopicsModel>?> getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://adilbek-hub.github.io/my_data/geography_data.json'));

      if (response.statusCode == 200) {
        final data = geographyTopicsModelFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      throw ('Кештен ката: ${e.toString()}');
    }
  }
}

final geographyTopicsService = GeograhyTopicsService(
  client: http.Client(),
);
