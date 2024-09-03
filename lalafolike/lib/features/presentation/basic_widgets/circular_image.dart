import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  final String imageUrl;
  final double radius;

  const CircularImage({
    super.key,
    required this.imageUrl,
    this.radius = 50.0,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage(imageUrl),
      backgroundColor: Colors.transparent,
    );
  }
}