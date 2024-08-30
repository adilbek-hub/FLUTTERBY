import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget? content;
  final EdgeInsetsGeometry padding;
  // final EdgeInsetsGeometry margin;
  final Color backgroundColor;
  final double elevation;
  final BorderRadius? borderRadius;
  final VoidCallback? onTap;

  const CustomCard({
    super.key,
    this.content,
    this.padding = const EdgeInsets.all(10.0),
    // this.margin = const EdgeInsets.all(8.0),
    this.backgroundColor = Colors.white,
    this.elevation = 2.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(12.0)),
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // margin: margin,
      color: backgroundColor,
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.zero,
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: borderRadius,
        child: Padding(
          padding: padding,
          child: content,
        ),
      ),
    );
  }
}
