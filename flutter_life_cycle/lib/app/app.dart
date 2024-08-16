import 'package:flutter/material.dart';
import 'package:flutter_life_cycle/route.dart';

class MyApp extends StatelessWidget {
  const MyApp(this.route, {super.key});
  final bool route;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) => RoutePage.onGenerateRoute(settings, route),
    );
  }
}
