import 'package:education/features/data/model/test_model.dart';
import 'package:http/http.dart' as http;

class TestTopicsService {
  const TestTopicsService({required this.client});
  final http.Client client;
  Future<List<TestToicsModel>?> getData() async {
    try {
      final response = await http
          .get(Uri.parse('https://adilbek-hub.github.io/my_data/test.json'));

      if (response.statusCode == 200) {
        final data = testToicsModelFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      throw ('Кештен ката: ${e.toString()}');
    }
  }
}

final testTopicsService = TestTopicsService(
  client: http.Client(),
);
