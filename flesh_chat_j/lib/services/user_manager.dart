import 'package:shared_preferences/shared_preferences.dart';

class UserManager {
  //эгер  тиркеме ачылганда uidни оку
  //эгер uid бар болсо homePageге жибер
  //эгер uid жок болсо flash_chatка жибер

  //Эгер колдонуучу логин же регистрация болсо колдонуучунун uidсин кешке сакта
  // эгер колдонуучу logout же delete болсо  uidни өчүрүп сал

  late final SharedPreferences pref;
  static const uidKey = 'uid_key';

  Future<bool> init() async {
    //эгер  тиркеме ачылганда uidни оку
    pref = await SharedPreferences.getInstance();
    final uid = pref.getString(uidKey);
    // if (uid != null) {
    //   return true;
    // } else {
    // return  false;
    // }
    //эгер uid бар болсо homePageге жибер
    //эгер uid жок болсо flash_chatка жибер
    return uid != null;
  }

  //Эгер колдонуучу логин же регистрация болсо колдонуучунун uidсин кешке сакта
  Future<void> setUid(String uid) async {
    await pref.setString(uidKey, uid);
  }

  // эгер колдонуучу logout же delete болсо  uidни өчүрүп сал
  Future<void> removeUid() async {
    await pref.remove(uidKey);
  }
}

final userManager = UserManager();
