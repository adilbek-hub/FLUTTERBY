import 'package:flutter/material.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';

class CustomTextContainer extends StatelessWidget {
  final String text;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Color color;
  final double borderRadius;
  final double borderWidth;
  final Color borderColor;
  final TextType textType;
  final Color? colorText;
  final FontWeight? fontWeight;

  const CustomTextContainer({
    super.key,
    required this.text,
    this.padding = const EdgeInsets.all(5.0),
    this.margin = const EdgeInsets.only(right: 8),
    this.color = Colors.green,
    this.borderRadius = 10.0,
    this.borderWidth = 0.5,
    this.borderColor = Colors.green,
    this.textType = TextType.body,
    this.colorText,
    this.fontWeight = FontWeight.w100,
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
        child: AppText(
            title: text,
            textType: textType,
            color: colorText,
            fontWeight: fontWeight));
  }
}
