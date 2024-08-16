// Импорт бул бардык флаттерге тиешелүү нерселерди өзүнө камтыйт
import 'package:counter_with_getx/counter_two_screen/counter2.dart';
import 'package:flutter/material.dart';

class CounterPage1 extends StatefulWidget {
  const CounterPage1({super.key});

  @override
  State<CounterPage1> createState() => _CounterPage1State();
}

class _CounterPage1State extends State<CounterPage1> {
  int index = 0;
  void koshuu() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Тапшырма 1",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Text(
                  "Сан: $index",
                  style: const TextStyle(fontSize: 20),
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        koshuu();
                      },
                      child: const Icon(Icons.add)),
                  ElevatedButton(
                      onPressed: () async {
                        final value = await Navigator.push<int>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CounterPage2(
                              index: index,
                            ),
                          ),
                        );
                        index = value ?? 0;
                        setState(() {});
                      },
                      child: const Icon(Icons.publish)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
