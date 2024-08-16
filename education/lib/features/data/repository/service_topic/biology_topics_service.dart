import 'package:education/features/data/model/biology_model.dart';
import 'package:http/http.dart' as http;

class BiologyTopicsService {
  const BiologyTopicsService({required this.client});
  final http.Client client;
  Future<List<BiologyTopicsModel>?> getData() async {
    try {
      final response = await http
          .get(Uri.parse('https://adilbek-hub.github.io/my_data/biology.json'));

      if (response.statusCode == 200) {
        final data = biologyTopicsModelFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      throw ('Кештен ката: ${e.toString()}');
    }
  }
}

final biologyTopicsService = BiologyTopicsService(
  client: http.Client(),
);
