import 'package:education/features/data/model/model_test/informatica_test/sistemalyk_computer.dart';
import 'package:http/http.dart' as http;

class SistemalykTarmaktarTestTopicsService {
  const SistemalykTarmaktarTestTopicsService({required this.client});
  final http.Client client;
  Future<List<SistemalykComputerTestModel>?> getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://adilbek-hub.github.io/my_data/tests_data/informatica/sistemalyk_computer.json'));

      if (response.statusCode == 200) {
        final data = sistemalykComputerTestModelFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      throw ('Кештен ката: ${e.toString()}');
    }
  }
}

final sistemalykComputerTestTopicsService =
    SistemalykTarmaktarTestTopicsService(
  client: http.Client(),
);
