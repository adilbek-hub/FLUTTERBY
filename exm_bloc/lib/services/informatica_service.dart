import 'package:exm_bloc/model/informatica.dart';
import 'package:http/http.dart' as http;

class InformaticaTopicsService {
  const InformaticaTopicsService({required this.client});
  final http.Client client;
  Future<InformaticaTopics?> getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://adilbek-hub.github.io/my_data/informatica_data.json'));

      if (response.statusCode == 200) {
        final data = informaticaTopicsFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      print('Кештен ката: ${e.toString()}');
    }
    return null;
  }
}

final informaticaService = InformaticaTopicsService(
  client: http.Client(),
);
