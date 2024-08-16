import 'package:flutter/material.dart';
import 'package:oop_abstract_class/model.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
   final Transport transport = Car();
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        title: const Text('Информация о транспорте'),
      ),
      body: const Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(transport.getName())
            ],),
      ),
    );
  }
}
