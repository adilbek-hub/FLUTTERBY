import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final void Function()? onPressed;
  final ButtonStyle? style;
  final String title;
  final TextStyle? textStyle;
  final double fontSize;
  final Color backgroundColor;
  final EdgeInsetsGeometry padding;
  final double? width;
  final double? height;

  const DefaultButton({
    super.key,
    required this.title,
    this.onPressed,
    this.style,
    this.textStyle,
    this.fontSize = 16.0,
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              backgroundColor: backgroundColor,
              textStyle: TextStyle(fontSize: fontSize),
            ),
        child: Text(
          title,
          style: textStyle,
        ),
      ),
    );
  }
}
