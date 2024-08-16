import 'package:counter_with_getx/counter_app_with_getx/home_view.dart';
import 'package:counter_with_getx/counter_two_screen/counter1.dart';
import 'package:counter_with_getx/counter_two_screen_getx/counter_getx1.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CounterPageGetx1(),
    );
  }
}
