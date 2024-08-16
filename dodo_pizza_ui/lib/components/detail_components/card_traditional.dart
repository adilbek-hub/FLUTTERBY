import 'package:flutter/material.dart';

class CardTraditional extends StatelessWidget {
  const CardTraditional({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 220, 219, 219),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
            child: Text(
          'Традиционное',
          style: TextStyle(
            fontWeight: FontWeight.w400,
          ),
        )),
      ),
    );
  }
}
