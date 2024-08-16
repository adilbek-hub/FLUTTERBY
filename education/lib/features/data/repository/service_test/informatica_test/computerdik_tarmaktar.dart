import 'package:education/features/data/model/model_test/informatica_test/computerdik_tarmaktar.dart';
import 'package:http/http.dart' as http;

class ComputerdikTarmaktarTestTopicsService {
  const ComputerdikTarmaktarTestTopicsService({required this.client});
  final http.Client client;
  Future<List<ComputerdikTarmaktarTestModel>?> getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://adilbek-hub.github.io/my_data/tests_data/informatica/computerdik_tarmaktar.json'));

      if (response.statusCode == 200) {
        final data = computerdikTarmaktarTestModelFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      throw ('Кештен ката: ${e.toString()}');
    }
  }
}

final computerdikTarmaktarTestTopicsService =
    ComputerdikTarmaktarTestTopicsService(
  client: http.Client(),
);
