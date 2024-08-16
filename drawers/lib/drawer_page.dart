import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  List<Widget> widgetOptions = [Text('Home'), Text('School'), Text('Jum')];
  int isSelected = 0;
  void onItemTopped(int index) {
    setState(() {
      isSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Drawer'),
        ),
        body: Center(
          child: widgetOptions[isSelected],
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.grey),
                child: Text('DrawerHeader'),
              ),
              ListTile(
                title: Text('Home'),
                selected: isSelected == 0,
                onTap: () {
                  onItemTopped(0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('School'),
                selected: isSelected == 1,
                onTap: () {
                  onItemTopped(1);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Jum'),
                selected: isSelected == 2,
                onTap: () {
                  onItemTopped(2);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
