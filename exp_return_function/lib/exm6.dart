import 'package:flutter/material.dart';

class Example6 extends StatefulWidget {
  const Example6({super.key});

  @override
  State<Example6> createState() => _Example6State();
}

class _Example6State extends State<Example6> {
  double num1 = 0;
  double num2 = 0;

  double maxNumFind(double a, double b) {
    setState(() {});
    if (a > b) {
      return a;
    } else {
      return b;
    }
  }

  @override
  Widget build(BuildContext context) {
    double result = maxNumFind(num1, num2);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Return Function'),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Enter Num1'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                num1 = double.tryParse(value) ?? 0;
              },
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Enter Num2'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                num2 = double.tryParse(value) ?? 0;
              },
            ),
            const SizedBox(height: 20),
            Text('Result: $result'),
            ElevatedButton(
              onPressed: () {
                maxNumFind(num1, num2);
              },
              child: const Text('Max Number'),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
