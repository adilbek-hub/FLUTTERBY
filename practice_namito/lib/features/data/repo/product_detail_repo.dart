import 'package:dio/dio.dart';
import 'package:practice_namito/core/dio_settings.dart';
import 'package:practice_namito/features/data/model/product_detail_model.dart';

class ProductDetailRepo {
  final DioSettings dio = DioSettings();
  Future<ProductDetailModel> getProductDetail({required int productId}) async {
    Response response =
        await dio.get('products/$productId/', queryParameters: {});
    return ProductDetailModel.fromJson(response.data);
  }
}
