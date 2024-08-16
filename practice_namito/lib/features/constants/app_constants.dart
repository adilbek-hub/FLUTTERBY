class AppConstants {
  AppConstants._();
  static final AppConstants _instance = AppConstants._();
  static AppConstants get instance => _instance;

  final String accessToken = 'accessToken';
  final String refreshToken = 'refreshToken';
}
