import 'package:flutter/material.dart';

class UserCorner extends StatelessWidget {
  const UserCorner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: const Icon(
        Icons.face,
        size: 35,
      ),
    );
  }
}
