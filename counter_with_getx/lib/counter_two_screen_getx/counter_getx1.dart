// Импорт бул бардык флаттерге тиешелүү нерселерди өзүнө камтыйт
import 'package:counter_with_getx/counter_app_with_getx/counter_controller.dart';
import 'package:counter_with_getx/counter_two_screen/counter2.dart';
import 'package:counter_with_getx/counter_two_screen_getx/counter_getx2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterPageGetx1 extends StatelessWidget {
  CounterPageGetx1({super.key});
  final c = Get.put(CounterController());

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
                child: Obx(() {
                  return Center(
                    child: Text(
                      "Сан: ${c.count}",
                      style: const TextStyle(fontSize: 20),
                    ),
                  );
                }),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: c.increment,
                child: const Icon(Icons.add),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push<int>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CounterPageGetx2(),
                    ),
                  );
                },
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
