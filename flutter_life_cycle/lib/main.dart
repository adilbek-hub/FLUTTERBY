import 'package:flutter/material.dart';
import 'package:flutter_life_cycle/app/app.dart';
import 'package:flutter_life_cycle/service/user_state.dart';

Future<void> main() async {
  WidgetsFlutterBinding();
  final isregistered = await userService.isRegistered();

  runApp(MyApp(isregistered));
}
