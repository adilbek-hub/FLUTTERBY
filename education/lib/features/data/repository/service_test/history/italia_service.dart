import 'package:education/features/data/model/model_test/history/italia.dart';
import 'package:http/http.dart' as http;

class ItaliaTestTopicsService {
  const ItaliaTestTopicsService({required this.client});
  final http.Client client;
  Future<List<ItaliaTestToicsModel>?> getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://adilbek-hub.github.io/my_data/tests_data/history/italia.json'));

      if (response.statusCode == 200) {
        final data = italiaVixTestToicsModelFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      throw ('Кештен ката: ${e.toString()}');
    }
  }
}

final italiaVIXTestTopicsService = ItaliaTestTopicsService(
  client: http.Client(),
);
