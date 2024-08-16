import 'package:flutter/material.dart';

class UsersAdd extends StatelessWidget {
  const UsersAdd({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 56,
      decoration: BoxDecoration(
        color: Color(0xffF0EFEF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text),
              Icon(icon.icon),
            ],
          )
        ],
      ),
    );
  }
}
