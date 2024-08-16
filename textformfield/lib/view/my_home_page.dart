import 'package:flutter/material.dart';
import 'package:textformfield/view/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  final String login = 'Adil@gmail.com';
  final String parrword = '101010';
  final List loginsList = <String>['Adil', 'Nura', 'Amantur', 'Bektur'];
  final List passwordList = <String>['Adil', 'Nura', 'Amantur', 'Bektur'];

  @override
  Widget build(BuildContext context) {
    // final loginController = TextEditingController();
    // final passwordController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                // controller: loginController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Логин жазыңыз';
                  } else if (!loginsList.contains(value)) {
                    return 'Логин туура эмес';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                // controller: passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пароль жазыңыз';
                  } else if (!passwordList.contains(value)) {
                    return 'Пароль туура эмес';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondPage(),
                      ),
                    );
                  }
                },
                child: const Text('Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
