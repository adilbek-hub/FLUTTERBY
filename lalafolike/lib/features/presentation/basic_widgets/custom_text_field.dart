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
  final TextStyle? hintTextStyle;

  const CustomTextField({
    super.key,
    required this.controller,
    this.hintText = 'Enter your message...',
    this.hintTextStyle,
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
    return TextField(
      controller: controller,
      maxLines: maxLines,
      style: textStyle ?? const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        contentPadding: padding,
        hintText: hintText,
        hintStyle: hintTextStyle,
        filled: true,
        fillColor: backgroundColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: borderColor,
            width: borderWidth,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: borderColor,
            width: borderWidth,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: borderColor,
            width: borderWidth,
          ),
        ),
      ),
    );
  }
}
