import 'package:flutter/material.dart';

class CustomWidgetContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Color color;
  final double borderRadius;
  final double borderWidth;

  final VoidCallback? onTap;

  const CustomWidgetContainer({
    super.key,
    required this.child,
    this.onTap,
    this.padding = const EdgeInsets.all(5.0),
    this.margin = const EdgeInsets.only(right: 10),
    this.color = Colors.green,
    this.borderRadius = 10.0,
    this.borderWidth = 0.5,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: child,
      ),
    );
  }
}
