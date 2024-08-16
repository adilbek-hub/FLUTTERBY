import 'package:flutter/material.dart';

class TestSynagyButton extends StatelessWidget {
  const TestSynagyButton({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: MediaQuery.of(context).size.height * 1 / 10,
          width: MediaQuery.of(context).size.width * 3 / 5,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blue,
                  Colors.green,
                ]),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "Тест сынагы",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: const Icon(
                    Icons.arrow_right_alt_outlined,
                    size: 25.0,
                    color: Colors.green,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
