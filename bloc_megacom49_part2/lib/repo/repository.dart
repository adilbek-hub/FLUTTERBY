import 'package:bloc_megacom49_part2/model.dart';
import 'package:dio/dio.dart';

class GetDogsRepository {
  Future<DogModel> getData() async {
    final Response response =
        await Dio().get('https://dog.ceo/api/breeds/image/random');
    final result = DogModel.fromJson(response.data);
    return result;
  }
}
