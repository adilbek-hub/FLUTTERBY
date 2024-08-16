import 'package:education/features/data/model/model_test/history/rim.dart';
import 'package:http/http.dart' as http;

class RimTestTopicsService {
  const RimTestTopicsService({required this.client});
  final http.Client client;
  Future<List<RimTestToicsModel>?> getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://adilbek-hub.github.io/my_data/tests_data/history/rim_imperiasy.json'));

      if (response.statusCode == 200) {
        final data = rimTestToicsModelFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      throw ('Кештен ката: ${e.toString()}');
    }
  }
}

final rimTestTopicsService = RimTestTopicsService(
  client: http.Client(),
);
