import 'package:shared_preferences/shared_preferences.dart';

class UserStateService {
  static const String _nameKey = 'name-key';
  static const String _lastNameKey = 'last_name-key';
  static const String _passwordKey = 'password-key';
  static const String _isRegisteredKey = 'registered-key';

  Future<bool> isRegistered() async {
    final preference = await SharedPreferences.getInstance();
    return preference.getBool(_isRegisteredKey) ?? false;
  }

  Future<void> signUp(
      {required String name,
      required String lastName,
      required String password}) async {
    //UserName alysh kerek
    // LastName alysh kerek
    // Password alysh kerek
    // Ushul nerselerdi saktap kyush kerek(cashe) paket Shared Preference
    final preference = await SharedPreferences.getInstance();
    await preference.setString(_nameKey, name);
    await preference.setString(_lastNameKey, lastName);
    await preference.setString(_passwordKey, password);
    await preference.setBool(_isRegisteredKey, true);
  }

  Future<bool> signIn({
    required String name,
    required String password,
  }) async {
    //Через SignUp болуп сакталган name  менен passwordту окуш керек
    // Эгер _nameKey == name жана _passwordKey == password true кайтарсын
    // else false кайтарсын.
    final preference = await SharedPreferences.getInstance();
    final cashedName = preference.getString(_nameKey);
    final cashedPassword = preference.getString(_passwordKey);
    if (name == cashedName && password == cashedPassword) {
      return true;
    } else {
      return false;
    }
  }
}

final userService = UserStateService();
