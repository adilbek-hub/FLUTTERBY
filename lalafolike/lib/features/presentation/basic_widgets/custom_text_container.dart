import 'package:flutter/material.dart';

class CustomTextContainer extends StatelessWidget {
  final String text;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Color color;
  final double borderRadius;
  final double borderWidth;
  final Color borderColor;

  const CustomTextContainer({
    super.key,
    required this.text,
    this.padding = const EdgeInsets.all(5.0),
    this.margin = const EdgeInsets.only(right: 8),
    this.color = Colors.green,
    this.borderRadius = 10.0,
    this.borderWidth = 0.5,
    this.borderColor = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(width: borderWidth, color: borderColor),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
