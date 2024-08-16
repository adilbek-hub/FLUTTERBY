import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Color? _color;

  @override
  void initState() {
    print('initState');
    super.initState();
    changeColor(Colors.red, 3);
  }

  Future<void> changeColor(Color? color, int second) async {
    await Future.delayed(Duration(seconds: second));
    _color = color;
    setState(() {});
    print(_color);
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
    changeColor(Colors.blue, 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      appBar: AppBar(
        title: const Text('SecondPage'),
      ),
    );
  }

  @override
  void dispose() {
    _color = null;
    print(_color);
    super.dispose();
  }
}
