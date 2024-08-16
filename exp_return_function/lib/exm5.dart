import 'package:flutter/material.dart';

class Example5 extends StatefulWidget {
  const Example5({super.key});

  @override
  State<Example5> createState() => _Example5State();
}

class _Example5State extends State<Example5> {
  int num1 = 0;
  int num2 = 0;
  int result = 0;

  int add(a, b) {
    setState(() {});
    result = a + b;
    return result;
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
                  add(num1, num2);
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
