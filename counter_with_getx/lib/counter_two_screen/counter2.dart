// Импорт бул бардык флаттерге тиешелүү нерселерди өзүнө камтыйт
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CounterPage2 extends StatefulWidget {
  CounterPage2({super.key, required this.index});
  int index;

  @override
  State<CounterPage2> createState() => _CounterPage2State();
}

class _CounterPage2State extends State<CounterPage2> {
  void kemituu() {
    setState(() {
      widget.index--;
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
                  "Сан: ${widget.index}",
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
                        kemituu();
                      },
                      child: const Icon(Icons.remove)),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                          widget.index,
                        );
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
