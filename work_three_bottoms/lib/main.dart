import 'package:flutter/material.dart';

import 'models/category_model.dart';
import 'models/my_category.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ///functions and variables
  int currentIndex = 0;

  buildCategory({required int index, required String name}) => GestureDetector(
        onTap: () => setState(() => currentIndex = index),
        child: Container(
          width: 100,
          height: 40,
          margin: const EdgeInsets.only(top: 10, left: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: currentIndex == 0 ? Colors.red : Colors.yellow),
          child: Text(name),
        ),
      );

  buildRemind({required int index, required String name}) => GestureDetector(
        onTap: () => setState(() => currentIndex = index),
        child: Container(
          width: 100,
          height: 40,
          margin: EdgeInsets.only(top: 10, right: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: currentIndex == 1 ? Colors.red : Colors.yellow),
          child: Text(name),
        ),
      );

  buildOptions({required int index, required String name}) => GestureDetector(
        onTap: () => setState(() => currentIndex = index),
        child: Container(
          width: 100,
          height: 40,
          margin: EdgeInsets.only(top: 10, right: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: currentIndex == 2 ? Colors.red : Colors.yellow),
          child: Text(name),
        ),
      );

  ///for ListView function

  buildAllCategories() => ListView.builder(
        itemCount: MyCategory.allCategory.length,
        itemBuilder: (context, index) {
          final category = MyCategory.allCategory[index];
          return Card(
            child: Column(
              children: [
                Text(category.id.toString()),
                Text(category.name),
                Text(category.price.toString()),
              ],
            ),
          );
        },
      );

  buildAllRemind() => ListView.builder(
        itemCount: MyCategory.allRemind.length,
        itemBuilder: (context, index) {
          final category = MyCategory.allRemind[index];
          return Card(
            child: Column(
              children: [
                Text(category.id.toString()),
                Text(category.name),
                Text(category.price.toString()),
              ],
            ),
          );
        },
      );

  buildAllOptions() => ListView.builder(
        itemCount: MyCategory.allOptions.length,
        itemBuilder: (context, index) {
          final category = MyCategory.allOptions[index];
          return Card(
            child: Column(
              children: [
                Text(category.id.toString()),
                Text(category.name),
                Text(category.price.toString()),
              ],
            ),
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildCategory(index: 0, name: 'Category'),
                buildRemind(index: 1, name: 'Remind'),
                buildOptions(index: 2, name: 'Options'),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: currentIndex == 0
                  ? buildAllCategories()
                  : currentIndex == 1
                      ? buildAllRemind()
                      : buildAllOptions(),
            ),
          ],
        ),
      ),
    );
  }
}
