import 'package:education/features/data/model/model_test/geography_test/europe_capitals.dart';
import 'package:http/http.dart' as http;

class EuropeCapitalsTestTopicsService {
  const EuropeCapitalsTestTopicsService({required this.client});
  final http.Client client;
  Future<List<EuropeCapitalsToicsModel>?> getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://adilbek-hub.github.io/my_data/tests_data/geography/geography_test_europe_capitals.json'));

      if (response.statusCode == 200) {
        final data = europeCapitalsToicsModelFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      throw ('Кештен ката: ${e.toString()}');
    }
  }
}

final europeCApitalsTestTopicsService = EuropeCapitalsTestTopicsService(
  client: http.Client(),
);
