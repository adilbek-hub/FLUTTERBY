import 'package:flutter/material.dart';

class TestyAddViews extends StatelessWidget {
  const TestyAddViews({
    super.key,
    required this.suplementImage,
    required this.suplementName,
    required this.suplementPrice,
  });

  final String suplementImage;
  final String suplementName;
  final int suplementPrice;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(suplementImage),
            Text(
              suplementName,
              textAlign: TextAlign.center,
            ),
            Text('$suplementPrice сом'),
          ],
        ),
      ),
    );
  }
}
