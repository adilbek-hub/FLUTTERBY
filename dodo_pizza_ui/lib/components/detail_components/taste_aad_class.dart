import 'package:flutter/material.dart';

class TasteAddClass extends StatelessWidget {
  const TasteAddClass({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.topLeft,
      child: Text(
        'Добавить по вкусу',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
