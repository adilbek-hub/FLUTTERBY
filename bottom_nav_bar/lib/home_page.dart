import 'package:bottom_nav_bar/pages/grey_page.dart';
import 'package:bottom_nav_bar/pages/orange_page.dart';
import 'package:bottom_nav_bar/pages/red_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedItem = 0;
  List widgetItems = [
    const GreyPage(),
    const RedPage(),
    const OrangePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: widgetItems.elementAt(selectedItem),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.train),
              label: 'grey',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.alarm),
              label: 'red',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo),
              label: 'orange',
            ),
          ],
          currentIndex: selectedItem,
          onTap: (value) {
            setState(() {
              selectedItem = value;
            });
          },
        ),
      ),
    );
  }
}
