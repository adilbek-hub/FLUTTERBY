import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:todo_1/model.dart';
import 'package:flutter/cupertino.dart';

class TodoView extends StatefulWidget {
  const TodoView({super.key});

  @override
  State<TodoView> createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  bool _isCompleted = false;
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _authorController = TextEditingController();

  Future<void> addTodo() async {
    final db = FirebaseFirestore.instance;
    final todos = Todo(
        title: _titleController.text,
        description: _descriptionController.text,
        isComplated: _isCompleted,
        author: _authorController.text);
    await db.collection('flutter').add(todos.toMap());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('TodoView'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFields(
                validator: (v) {
                  if (v == null || v.isEmpty) {
                    return 'Пустой Тайтл';
                  }
                  return null;
                },
                controller: _titleController,
                hintText: 'Title',
              ),
              const SizedBox(height: 10),
              TextFields(
                validator: (va) {
                  if (va == null || va.isEmpty) {
                    return 'Путой Дескриптшн';
                  }
                  return null;
                },
                controller: _descriptionController,
                maxLines: 5,
                hintText: 'Description',
              ),
              const SizedBox(height: 10),
              CheckboxListTile(
                value: _isCompleted,
                onChanged: (v) {
                  setState(() {
                    _isCompleted = v ?? false;
                  });
                },
              ),
              TextFields(
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return 'Пустой Автор';
                  }
                  return null;
                },
                controller: _authorController,
                hintText: 'Author',
              ),
              const SizedBox(height: 40),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[300],
                  ),
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const CupertinoAlertDialog(
                              content: SizedBox(
                                  height: 50,
                                  child: CupertinoActivityIndicator()),
                            );
                          });
                      await addTodo();
                      // ignore: use_build_context_synchronously
                      Navigator.popUntil(context, (route) => route.isFirst);
                    }
                  },
                  icon: const Icon(Icons.publish),
                  label: const Text('Add Todo'))
            ],
          ),
        ),
      ),
    );
  }
}

class TextFields extends StatelessWidget {
  const TextFields({
    Key? key,
    this.maxLines,
    this.hintText,
    this.controller,
    this.validator,
  }) : super(key: key);
  final int? maxLines;
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hintText,
        fillColor: Colors.black12,
        filled: true,
      ),
    );
  }
}
