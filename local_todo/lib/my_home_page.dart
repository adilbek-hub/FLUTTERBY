import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:local_todo/app_widgets.dart/default_text_field.dart';

@RoutePage()
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();
  List<dynamic> items = [];

  void additem() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        items.add(_controller.text);
      });
    }
  }

  void removeitem(int index) {
    items.removeAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    key: Key(index.toString()),
                    onDismissed: (direction) {
                      if (direction == DismissDirection.startToEnd) {
                        removeitem(index);
                        print('delete');
                      } else {
                        removeitem(index);
                        print('delete');
                      }
                    },
                    background: Container(
                      color: Colors.red,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.centerLeft,
                      child: const Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                    child: Card(
                      margin: const EdgeInsets.all(10),
                      child: ListTile(
                        title: Text(items[index]),
                        trailing: IconButton(
                          onPressed: () => removeitem(index),
                          icon: const Icon(Icons.delete),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DefaultTextField(
                hintText: 'Add item',
                controller: _controller,
                backgroundColor: Theme.of(context).colorScheme.primaryFixedDim,
                onFieldSubmitted: (s) {
                  additem();
                  _controller.clear();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
