import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
              fit: BoxFit.cover,
              'https://tb-static.uber.com/prod/image-proc/processed_images/f57fb461cfafbbb63b57e8a50c81c5d0/c9252e6c6cd289c588c3381bc77b1dfc.jpeg'),
          DraggableScrollableSheet(
            builder: (context, scrollController) => Container(
              color: Colors.red,
              child: ListView.builder(
                controller: scrollController,
                itemCount: 100,
                itemBuilder: (context, index) =>
                    ListTile(title: Text('$index')),
              ),
            ),
          )
        ],
      ),
    );
  }
}
