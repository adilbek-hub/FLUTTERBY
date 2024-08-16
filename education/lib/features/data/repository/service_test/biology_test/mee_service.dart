import 'package:education/features/data/model/model_test/biology_test/mee.dart';
import 'package:http/http.dart' as http;

class MeeTestTopicsService {
  const MeeTestTopicsService({required this.client});
  final http.Client client;
  Future<List<MeeTestToicsModel>?> getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://adilbek-hub.github.io/my_data/tests_data/biology/mee_bolugu.json'));

      if (response.statusCode == 200) {
        final data = meeTestToicsModelFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      throw ('Кештен ката: ${e.toString()}');
    }
  }
}

final meeTestTopicsService = MeeTestTopicsService(
  client: http.Client(),
);
