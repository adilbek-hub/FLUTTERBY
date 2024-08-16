import 'package:flutter/material.dart';

class Example2 extends StatefulWidget {
  const Example2({super.key});

  @override
  State<Example2> createState() => _Example2State();
}

class _Example2State extends State<Example2> {
  double length = 0.0;
  double width = 0.0;
  double area = 0.0;

  double calculateRectangleArea(double length, double width) {
    return length * width;
  }

  void calculateArea() {
    setState(() {});
    area = calculateRectangleArea(length, width);
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
                  length = double.parse(value);
                },
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Enter width'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  width = double.parse(value);
                },
              ),
              const SizedBox(height: 20),
              Text('Area: $area'),
              ElevatedButton(
                onPressed: () {
                  calculateArea();
                },
                child: const Text('Calculate Area'),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
