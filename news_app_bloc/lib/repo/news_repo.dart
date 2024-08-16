import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app_bloc/models/news.dart';
import '../constants/api_const.dart';

class NewsRepo {
  const NewsRepo({required this.client});
  final http.Client client;

  Future<List<News>?> getHewsByCountry(String countryCode) async {
    try {
      final uri = Uri.parse(ApiConst.countryNews(countryCode));
      final response = await client.get(uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final body = jsonDecode(response.body) as Map<String, dynamic>;

        final news =
            (body['articles'] as List).map((e) => News.fromJson(e)).toList();
        return news;
      } else {
        print('Response.StatusCode: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('catch: ${e.toString()}');
      return null;
    }
  }
}

final newsRepo = NewsRepo(client: http.Client());
