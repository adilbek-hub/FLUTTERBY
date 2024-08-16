import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({
    super.key,
    required this.logoSize,
  });
  final double logoSize;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'logo',
      child: Image.asset(
        'assets/logo.png',
        height: logoSize,
      ),
    );
  }
}
