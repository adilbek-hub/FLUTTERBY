import 'package:flutter/material.dart';

class Example1 extends StatefulWidget {
  const Example1({super.key});

  @override
  State<Example1> createState() => _Example1State();
}

class _Example1State extends State<Example1> {
  double num1 = 0.0;
  double num2 = 0.0;
  double result = 0.0;
  void calculateSum() {
    setState(() {
      result = num1 + num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Return Function'),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Enter number 1'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  try {} catch (e) {
                    print('Number1: Ката');
                  }
                  num1 = double.parse(value);
                },
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Enter number 2'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  try {
                    num2 = double.parse(value);
                  } catch (e) {
                    print(' Number2: ${e.toString()}');
                  }
                },
              ),
              const SizedBox(height: 20),
              Text('Result: $result'),
              ElevatedButton(
                onPressed: () {
                  calculateSum();
                },
                child: const Text('Calculate Sum'),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
