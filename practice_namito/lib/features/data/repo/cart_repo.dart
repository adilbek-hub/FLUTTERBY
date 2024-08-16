import 'package:dio/dio.dart';
import 'package:practice_namito/core/dio_settings.dart';
import 'package:practice_namito/features/data/model/add_card_model.dart';
import 'package:practice_namito/features/data/model/get_cart_model.dart';

class CartRepo {
  DioSettings dio = DioSettings();

  Future<void> addToCart({required AddCartModel variant}) async {
    await dio.post("carts/add/", variant.toJson());
  }

  Future<GetCartProductModel> getCartProducts() async {
    final Response response =
        await dio.get("carts/detail/", queryParameters: {});
    return GetCartProductModel.fromJson(response.data);
  }
}
