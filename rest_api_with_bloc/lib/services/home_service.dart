import 'package:http/http.dart' as http;
import 'package:rest_api_with_bloc/user_model.dart';

class HomeService {
  const HomeService(this.client);
  final http.Client client;
  Future<List<User>?> getUsers() async {
    try {
      final uri = Uri.parse('http://jsonplaceholder.typicode.com/comments');
      final response = await client.get(uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return fromStringList(response.body);
      } else {
        print('response.statusCode: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Catch: ${e.toString()}');
      return null;
    }
  }
}

final homeService = HomeService(
  http.Client(),
);
