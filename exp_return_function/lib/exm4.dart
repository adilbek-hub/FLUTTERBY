import 'package:flutter/material.dart';

class Example4 extends StatefulWidget {
  const Example4({super.key});

  @override
  State<Example4> createState() => _Example4State();
}

class _Example4State extends State<Example4> {
  int num1 = 0;
  int num2 = 0;
  int result = 0;

  int multiply(int num1, int num2) => num1 * num2;
  void calculate() {
    setState(() {});
    result = multiply(num1, num2);
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
                decoration: const InputDecoration(labelText: 'Enter length'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  num1 = int.parse(value);
                },
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Enter width'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  num2 = int.parse(value);
                },
              ),
              const SizedBox(height: 20),
              Text('Result: $result'),
              ElevatedButton(
                onPressed: () {
                  calculate();
                },
                child: const Text('Calculate'),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
