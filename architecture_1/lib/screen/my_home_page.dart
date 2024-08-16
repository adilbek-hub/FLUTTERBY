import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

/*
1) Каждый экран представлен стеттФулВиджетам  - Screen
2) Логика хранится в стейте - Controller
3) Верстка хранятся в стейтлес виджете - View
4) Controller  передается во View с помощью InheritedWidget
5) Саму верстку страницы необходимо разбить на виджеты
 */
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => Controller();
}

class Repository {
  Future<List<dynamic>> _loadPosts() async {
    final uri = Uri.parse('http://jsonplaceholder.typicode.com/posts');
    final response = await get(uri);
    final json = jsonDecode(response.body) as List<dynamic>;
    return json;
  }
}

class Controller extends State<MyHomePage> {
  final _repository = Repository();
  var _posts = <dynamic>[];
  Future<void> _loadPosts() async {
    final json = await _repository._loadPosts();
    _posts += json;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) =>
      Provider(state: this, child: const View());
}

class Provider extends InheritedWidget {
  final Controller state;
  const Provider({
    Key? key,
    required Widget child,
    required this.state,
  }) : super(key: key, child: child);
  static Provider? watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>(); 
  }

  static Provider? read(BuildContext context) {
    final widget =
        context.getElementForInheritedWidgetOfExactType<Provider>()?.widget;
    return widget is Provider ? widget : null;
  }

  @override
  bool updateShouldNotify(Provider oldWidget) {
    return true;
  }
}

class View extends StatelessWidget {
  const View({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.dependOnInheritedWidgetOfExactType<Provider>()!.state;
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: state._loadPosts,
              child: const Text('Загрузить'),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: state._posts.length,
                  itemBuilder: (context, index) {
                    return ColumnWidget(
                      title: state._posts[index]['title'] as String,
                      body: state._posts[index]['body'] as String,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({Key? key, required this.title, required this.body})
      : super(key: key);

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            body,
          ),
          const Divider(height: 40),
        ],
      ),
    );
  }
}
