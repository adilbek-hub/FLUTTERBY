import 'package:education/features/data/model/model_test/history/bayrky_germandar.dart';
import 'package:http/http.dart' as http;

class BayirkyGermandarTestTopicsService {
  const BayirkyGermandarTestTopicsService({required this.client});
  final http.Client client;
  Future<List<BayrkGermandarTestToicsModel>?> getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://adilbek-hub.github.io/my_data/tests_data/history/bayrky_germandar.json'));

      if (response.statusCode == 200) {
        final data = bayrkGermandarTestToicsModelFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      throw ('Кештен ката: ${e.toString()}');
    }
  }
}

final bayirkyGermandarTestTopicsService = BayirkyGermandarTestTopicsService(
  client: http.Client(),
);
