import 'package:flutter/material.dart';
import 'package:flutter_life_cycle/pages/home_page.dart';
import 'package:flutter_life_cycle/pages/sign_up.dart';

class RoutePage {
  static const init = '/';
  static const home = '/home';
  static const reqister = '/reqister';

  static Route? onGenerateRoute(RouteSettings settings, bool isRegister) {
    switch (settings.name) {
      case init:
        return MaterialPageRoute(
            builder: (_) => isRegister ? const MyHomePage() : const SignUp());
      case home:
        return MaterialPageRoute(builder: (_) => const MyHomePage());
      case reqister:
        return MaterialPageRoute(builder: (_) => const SignUp());
      default:
        return MaterialPageRoute(builder: (_) => const SignUp());
    }
  }
}

final myRoute = RoutePage();
