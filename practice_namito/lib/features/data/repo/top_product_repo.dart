import 'package:dio/dio.dart';
import 'package:practice_namito/core/dio_settings.dart';
import 'package:practice_namito/features/data/model/top_product_model.dart';

final class TopProductsService {
  DioSettings dioSettings = DioSettings();

  Future<List<TopProduct>> getData() async {
    Response response =
        await dioSettings.dio.get('top-products/', queryParameters: {});

    List<TopProduct> data = [];
    for (var item in response.data) {
      data.add(TopProduct.fromJson(item));
    }

    return data;
  }
}
