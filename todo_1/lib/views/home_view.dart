import 'dart:js_interop';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:todo_1/model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Stream<QuerySnapshot> readTodos() {
    final db = FirebaseFirestore.instance;
    return db.collection('flutter').snapshots();
  }

  Future<void> updateTodo(Todo todo) async {
    final db = FirebaseFirestore.instance;
    await db.collection('flutter').doc(todo.id).update(
      {
        'isComplated': !todo.isComplated,
      },
    );
  }

  Future<void> deleteTodo(Todo todo) async {
    final db = FirebaseFirestore.instance;
    await db.collection('flutter').doc(todo.id).delete();
  }

  @override
  void initState() {
    super.initState();
    readTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(''),
      ),
      body: StreamBuilder(
        stream: readTodos(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator.adaptive());
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          } else if (snapshot.hasData) {
            final List<Todo> todos = snapshot.data!.docs
                .map(
                  (e) => Todo.fromFirestore(e.data() as Map<String, dynamic>)
                    ..id = e.id,
                )
                .toList();
            return ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context, index) {
                  final todo = todos[index];
                  return Card(
                    color: Colors.red,
                    child: ListTile(
                      leading: Text(todo.author),
                      title: Text(
                        todo.title,
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Checkbox(
                            value: todo.isComplated,
                            onChanged: (v) async {
                              await updateTodo(todo);
                            },
                          ),
                          IconButton(
                            onPressed: () async {
                              await deleteTodo(todo);
                            },
                            icon: const Icon(Icons.delete),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        todo.description ?? '',
                      ),
                    ),
                  );
                });
          } else {
            return const Text('Some error');
          }
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pushNamed('/todo_view');
        },
        label: const Text('TodoPage'),
      ),
    );
  }
}
