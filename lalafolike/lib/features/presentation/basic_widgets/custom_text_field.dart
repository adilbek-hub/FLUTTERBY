import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final double borderRadius;
  final Color borderColor;
  final double borderWidth;
  final Color backgroundColor;
  final EdgeInsets padding;
  final TextStyle? textStyle;
  final int maxLines;
  final double height;

  const CustomTextField({
    super.key,
    required this.controller,
    this.hintText = 'Enter your message...',
    this.borderRadius = 10.0,
    this.borderColor = Colors.grey,
    this.borderWidth = 1.0,
    this.backgroundColor = Colors.white,
    this.padding = const EdgeInsets.all(10.0),
    this.textStyle,
    this.maxLines = 1,
    this.height = 30.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
      ),
      child: TextField(
        controller: controller,
        maxLines: maxLines,
        style: textStyle ?? const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
