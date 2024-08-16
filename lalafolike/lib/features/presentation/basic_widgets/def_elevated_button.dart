import 'package:flutter/material.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';

class DefElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  final ButtonStyle? style;
  final String title;
  final Color textColor;
  final double fontSize;
  final Color backgroundColor;
  final EdgeInsetsGeometry padding;
  final TextType textType;
  final double? width;
  final double? height;

  const DefElevatedButton({
    super.key,
    required this.title,
    this.onPressed,
    this.style,
    this.textColor = Colors.white,
    this.fontSize = 16.0,
    this.textType = TextType.body,
    this.backgroundColor = Colors.green,
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
    this.width = double.infinity,
    this.height = 50.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          onPressed: onPressed,
          style: style ??
              ElevatedButton.styleFrom(
                backgroundColor: backgroundColor,
                textStyle: TextStyle(fontSize: fontSize),
              ),
          child: AppText(
            title: title,
            textType: textType,
            color: textColor,
          )),
    );
  }
}
