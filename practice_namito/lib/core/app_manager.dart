import 'package:practice_namito/features/constants/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppManager {
  AppManager._();
  static AppManager instance = AppManager._();

  Future<SharedPreferences> preferences() async {
    return await SharedPreferences.getInstance();
  }

  Future<void> setToken(
      {required String accessToken, required String refreshToken}) async {
    final prefs = await preferences();
    await prefs.setString(AppConstants.instance.accessToken, accessToken);
    await prefs.setString(AppConstants.instance.refreshToken, refreshToken);
    // Show after logout
    final clearedAccessToken =
        prefs.getString(AppConstants.instance.accessToken);
    final clearedRefreshToken =
        prefs.getString(AppConstants.instance.refreshToken);
    print('AccessToken: $clearedAccessToken');
    print('RefreshToken: $clearedRefreshToken');
  }

  Future<String?> getToken() async {
    final prefs = await preferences();
    final token = prefs.getString(AppConstants.instance.accessToken);
    return token;
  }
}
