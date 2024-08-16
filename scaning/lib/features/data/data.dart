import 'package:http/http.dart' as http;

Future<void> createData() async {
  final response = await http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/posts'),
  );

  if (response.statusCode != 201) {
    throw Exception('Failed to create data');
  }
}
