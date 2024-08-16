import 'package:flutter/material.dart';
import 'package:quize_app/features/domain/quize_brain.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<bool> jooptor = [];

  void incrementIndex(bool joop) {
    if (jooptor.length < 4) {
      final result = joop == quizeBrainList[index].joop;
      jooptor.add(result);
    }
    ///////////////////////
    if (index < 3) {
      index++;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff343434),
      appBar: myAppBar(),
      body: Center(
        child: Column(
          children: [
            const Spacer(flex: 2),
            Text(
              quizeBrainList[index].suroo,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(flex: 2),
            CustomButton(
              backgroundColor: const Color(0xff4CB050),
              text: 'Туура',
              onPressed: () {
                incrementIndex(true);
                setState(() {});
              },
            ),
            CustomButton(
              backgroundColor: const Color(0xffEF443A),
              text: 'Туура эмес',
              onPressed: () {
                incrementIndex(false);
                setState(() {});
              },
            ),
            const Spacer(flex: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: jooptor
                      .map(
                        (e) => Icon(
                          e ? Icons.check : Icons.close,
                          color: e ? Colors.green : Colors.red,
                        ),
                      )
                      .toList(),
                ),
                IconButton(
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () {
                    index = 0;
                    jooptor.clear();
                    setState(() {});
                  },
                  icon: const Icon(Icons.replay),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: const Text('7 тапшырма'),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.backgroundColor,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final Color backgroundColor;
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          minimumSize: const Size(335, 70),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
