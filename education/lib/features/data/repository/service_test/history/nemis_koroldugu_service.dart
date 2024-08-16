import 'package:education/features/data/model/model_test/history/nemis_koroldugu.dart';
import 'package:http/http.dart' as http;

class NemisKorolduguTestTopicsService {
  const NemisKorolduguTestTopicsService({required this.client});
  final http.Client client;
  Future<List<NemisKorolduguTestToicsModel>?> getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://adilbek-hub.github.io/my_data/tests_data/history/nemis_koroldugu.json'));

      if (response.statusCode == 200) {
        final data = nemisKorolduguTestToicsModelFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      throw ('Кештен ката: ${e.toString()}');
    }
  }
}

final nemisKorolduguTestTopicsService = NemisKorolduguTestTopicsService(
  client: http.Client(),
);
