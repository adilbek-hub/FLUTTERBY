import 'package:flutter/material.dart';

class ProContainer extends StatelessWidget {
  const ProContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        'pro'.toUpperCase(),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 9,
        ),
      ),
    );
  }
}