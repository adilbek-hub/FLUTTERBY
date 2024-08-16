import 'package:dio/dio.dart';
import 'package:practice_namito/core/dio_settings.dart';

class LikeRepo {
  LikeRepo();
  final dio = DioSettings();
  Future<Response> like({required int productId}) async {
    final Response response =
        await dio.post('favorite/toggle/', {"product_id": productId});
    return response;
  }
}
