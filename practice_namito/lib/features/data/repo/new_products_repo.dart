import 'package:dio/dio.dart';
import 'package:practice_namito/core/dio_settings.dart';
import 'package:practice_namito/features/data/model/products.dart';

final class NewProductsService implements IProductRepo {
  DioSettings dioSettings = DioSettings();
  @override
  Future<List<Products>> getData() async {
    Response response =
        await dioSettings.get('new-products/', queryParameters: {});

    final List<Products> data = [];

    final List responseData = response.data;
    for (final i in responseData) {
      data.add(
        Products.fromJson(i),
      );
    }
    return data;
  }
}

//dsdsd dc
final newProductsService = NewProductsService();

abstract class IProductRepo {
  Future<List<Products>> getData();
}
