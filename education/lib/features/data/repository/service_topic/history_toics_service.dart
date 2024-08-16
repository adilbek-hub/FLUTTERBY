import 'package:education/features/data/model/history_model.dart';
import 'package:http/http.dart' as http;

class HistoryTopicsService {
  const HistoryTopicsService({required this.client});
  final http.Client client;
  Future<List<HistoryTopicsModel>?> getData() async {
    try {
      final response = await http
          .get(Uri.parse('https://adilbek-hub.github.io/my_data/history.json'));

      if (response.statusCode == 200) {
        final data = historyTopicsModelFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      throw ('Кештен ката: ${e.toString()}');
    }
  }
}

final historyTopicsService = HistoryTopicsService(
  client: http.Client(),
);
