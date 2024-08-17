import 'package:flutter/material.dart';

class DefaultContainer extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final EdgeInsets padding;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;

  const DefaultContainer({
    super.key,
    required this.child,
    this.backgroundColor,
    this.padding = const EdgeInsets.all(16.0),
    this.width = double.infinity,
    this.height,
    this.borderRadius = const BorderRadius.all(Radius.circular(10.0)),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
      ),
      child: child,
    );
  }
}
