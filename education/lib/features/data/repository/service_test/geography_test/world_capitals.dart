import 'package:education/features/data/model/model_test/geography_test/world_capitals.dart';
import 'package:http/http.dart' as http;

class WorldCapitalsTestTopicsService {
  const WorldCapitalsTestTopicsService({required this.client});
  final http.Client client;
  Future<List<WorldCapitalToicsModel>?> getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://adilbek-hub.github.io/my_data/tests_data/geography/geography_world_capitals.json'));

      if (response.statusCode == 200) {
        final data = worldCapitalToicsModelFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      throw ('Кештен ката: ${e.toString()}');
    }
  }
}

final worldCapitalsTestTopicsService = WorldCapitalsTestTopicsService(
  client: http.Client(),
);
