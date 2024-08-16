import 'package:beautiful_lisview_builder/mock_data.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('How to ListView'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return Align(
            heightFactor: 0.7,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Material(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 5,
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: Text(todoList[index].title),
                  subtitle: Text(todoList[index].description),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  tileColor: colors[Random().nextInt(todoList.length)],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
