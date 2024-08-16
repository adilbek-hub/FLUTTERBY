import 'package:arguments_using_route_settings/detail_page.dart';
import 'package:arguments_using_route_settings/todo_model.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.todos});
  final List<ToDo> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Home Page'),
        ),
        body: ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const DetailPage();
                      },
                      settings: RouteSettings(arguments: todos[index]),
                    ),
                  );
                },
                child: Card(
                  child: ListTile(
                    title: Text(todos[index].title),
                  ),
                ),
              );
            }));
  }
}
