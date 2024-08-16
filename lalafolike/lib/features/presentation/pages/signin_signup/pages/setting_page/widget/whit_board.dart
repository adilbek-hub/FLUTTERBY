import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';

class WhiteBoard extends StatelessWidget {
  const WhiteBoard({
    super.key,
    this.flex,
    this.child,
  });
  final int? flex;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: Container(
        color: ColorConstants.white,
        child: child,
      ),
    );
  }
}
