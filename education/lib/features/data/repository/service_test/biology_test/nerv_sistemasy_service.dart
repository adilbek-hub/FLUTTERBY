import 'package:education/features/data/model/model_test/biology_test/nerv_sistemasy.dart';

import 'package:http/http.dart' as http;

class NervSistemasyTestTopicsService {
  const NervSistemasyTestTopicsService({required this.client});
  final http.Client client;
  Future<List<NervSystemasyTestToicsModel>?> getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://adilbek-hub.github.io/my_data/tests_data/biology/nerv_sistemasy.json'));

      if (response.statusCode == 200) {
        final data = nervSystemasyTestToicsModelFromJson(response.body);
        return data;
      } else {
        throw Exception('Failed to load computer data');
      }
    } catch (e) {
      throw ('Кештен ката: ${e.toString()}');
    }
  }
}

final nervSistemasyTestTopicsService = NervSistemasyTestTopicsService(
  client: http.Client(),
);
