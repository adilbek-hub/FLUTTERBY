import 'package:flutter/material.dart';

class DynamicBorderContainer extends StatelessWidget {
  final double width;
  final double height;
  final Color borderColor;
  final double borderWidth;
  final BorderRadius borderRadius;
  final Widget child;

  static const radius = Radius.circular(7.0);

  const DynamicBorderContainer({
    super.key,
    this.width = double.infinity,
    this.height = 50.0,
    this.borderColor = Colors.grey,
    this.borderWidth = 0.5,
    this.borderRadius = const BorderRadius.all(radius),
    this.child = const Text('Hello World'),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: borderWidth),
        borderRadius: borderRadius,
      ),
      child: Center(child: child),
    );
  }
}
