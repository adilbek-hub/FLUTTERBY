import 'package:practice_namito/core/app_manager.dart';
import 'package:practice_namito/core/dio_settings.dart';
import 'package:practice_namito/features/data/model/token.dart';

class LoginRepo {
  final DioSettings dio = DioSettings();

  Future<void> login({required String phoneNumber}) async {
    await dio
        .post('users/login/', <String, String>{"phone_number": phoneNumber});
  }

  Future<TokenModel> verifyPin({required String pinCode}) async {
    final request = await dio.post('users/verify-code/', {
      "code": pinCode,
    });
    final TokenModel response = TokenModel.fromJson(request.data);
    AppManager.instance.setToken(
        accessToken: response.accessToken!,
        refreshToken: response.refreshToken!);

    return response;
  }
}
