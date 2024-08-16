import 'dart:math';

import 'package:counter_with_getx/counter_app_with_getx/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeView({
    super.key,
  });

  final c = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    print("Build");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(
              () {
                print('obx istedi');
                return Text(
                  '${c.count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            ElevatedButton(
              onPressed: c.increment,
              child: const Text('increment'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: c.decrement,
              child: const Text('degrement'),
            ),
          ],
        ),
      ),
    );
  }
}
