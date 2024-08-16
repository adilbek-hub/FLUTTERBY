import 'package:flutter/material.dart';

class CustomImageContainer extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final String imageUrl;

  const CustomImageContainer({
    super.key,
    required this.width,
    required this.height,
    required this.borderRadius,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Image.asset(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
