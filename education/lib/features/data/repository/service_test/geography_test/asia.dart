import 'package:education/features/data/model/model_test/geography_test/asia.dart';
import 'package:http/http.dart' as http;

class AsiaTestTopicsService {
  const AsiaTestTopicsService({required this.client});
  final http.Client client;
  Future<List<AsiaTestToicsModel>?> getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://adilbek-hub.github.io/my_data/tests_data/geography/geography_test_asia.json'));

      if (response.statusCode == 200) {
        final data = asiaTestToicsModelFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      throw ('Кештен ката: ${e.toString()}');
    }
  }
}

final asiaTestTopicsService = AsiaTestTopicsService(
  client: http.Client(),
);
