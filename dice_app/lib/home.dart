import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int firstDice = 3;
  int secondDice = 5;
  int esepte = 0;
  Random random = Random();
  void changeDice() {
    firstDice = random.nextInt(6) + 1;
    secondDice = random.nextInt(6) + 1;
    esepte = esepte + firstDice + secondDice;
    setState(() {});
    result();
  }

  int computerFirstDice = 1;
  int computerSeconsdDice = 2;
  int compEsep = 0;

  computerAction() {
    computerFirstDice = random.nextInt(6) + 1;
    computerSeconsdDice = random.nextInt(6) + 1;
    compEsep = compEsep + computerFirstDice + computerSeconsdDice;
    setState(() {});
    result();
  }

  void result() {
    if (esepte >= 50) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Adam Uttu'),
            actions: [
              TextButton(
                onPressed: () {
                  resetAll();
                  setState(() {});
                  Navigator.pop(context);
                },
                child: const Text('Чыгуу'),
              ),
            ],
          );
        },
      );
    } else if (compEsep >= 50) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Comp Uttu'),
            actions: [
              TextButton(
                onPressed: () {
                  resetAll();
                  setState(() {});
                  Navigator.pop(context);
                },
                child: const Text('Чыгуу'),
              ),
            ],
          );
        },
      );
    }
  }

  void resetAll() {
    firstDice = 1;
    secondDice = 1;
    esepte = 0;
    computerFirstDice = 1;
    computerSeconsdDice = 1;
    compEsep = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              esepte.toString(),
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                changeDice();
              },
              child: const Text('Random'),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Image.asset('assets/dice$firstDice.png'),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Image.asset('assets/dice$secondDice.png'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Image.asset('assets/dice$computerFirstDice.png'),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Image.asset('assets/dice$computerSeconsdDice.png'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                computerAction();
              },
              child: const Text('Random'),
            ),
            Text(
              compEsep.toString(),
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
