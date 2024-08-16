import 'package:education/features/data/model/model_test/informatica_test/personal_computer.dart';
import 'package:http/http.dart' as http;

class PersonalComputerTestTopicsService {
  const PersonalComputerTestTopicsService({required this.client});
  final http.Client client;
  Future<List<PersonalComputerTestToicsModel>?> getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://adilbek-hub.github.io/my_data/tests_data/informatica/informatica_test_personal_computer.json'));

      if (response.statusCode == 200) {
        final data = personalComputerTestToicsModelFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      throw ('Кештен ката: ${e.toString()}');
    }
  }
}

final personalComputerTestTopicsService = PersonalComputerTestTopicsService(
  client: http.Client(),
);
