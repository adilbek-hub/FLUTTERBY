import 'package:flutter/material.dart';
import 'package:todo_1/views/home_view.dart';
import 'package:todo_1/views/todo_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const HomeView(),
        '/todo_view': (context) => const TodoView(),
      },
    );
  }
}
