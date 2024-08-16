import 'package:education/features/data/model/model_test/biology_test/men_and_animal.dart';
import 'package:http/http.dart' as http;

class ManAndAnimalTestTopicsService {
  const ManAndAnimalTestTopicsService({required this.client});
  final http.Client client;
  Future<List<ManAndAnimalTestToicsModel>?> getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://adilbek-hub.github.io/my_data/tests_data/biology/men_and_animal.json'));

      if (response.statusCode == 200) {
        final data = manAndAnimalTestToicsModelFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      throw ('Кештен ката: ${e.toString()}');
    }
  }
}

final manAndAnimalTestTopicsService = ManAndAnimalTestTopicsService(
  client: http.Client(),
);
