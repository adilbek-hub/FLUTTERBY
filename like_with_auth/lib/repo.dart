import 'dart:convert';

import 'package:http/http.dart' as http;

class PostData {
  PostData({required this.client});

  final http.Client client;
  final uri = 'http://164.92.199.52/api/favorite/toggle/';

  Future<bool> getData() async {
    try {
      final response = await client.post(Uri.parse(uri));

      if (response.statusCode == 200) {
        print(response.body);
        print('Success');
        return true; // Если статус код 200, возвращаем true
      } else {
        print('Error: ${response.statusCode}');
        final errorBody = utf8.decode(response.bodyBytes);
        print('Error body: $errorBody');
        return false; // Если статус код не 200, возвращаем false
      }
    } catch (e) {
      print('Error: $e');
      return false; // В случае ошибки также возвращаем false
    }
  }
}

final postData = PostData(client: http.Client());
