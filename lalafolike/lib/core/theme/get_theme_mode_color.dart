import 'package:flutter/material.dart';

final getThemeModeColor = GetThemeModeColor();

class GetThemeModeColor {
  Color _brighnessTheme(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black;
  }

  Color _brightnessColor(BuildContext context,
      {required Color darkColor, required Color lightColor}) {
    return Theme.of(context).brightness == Brightness.dark
        ? darkColor
        : lightColor;
  }

  Color Function(BuildContext context) get brighnessTheme => _brighnessTheme;

  Color Function(BuildContext context,
      {required Color darkColor,
      required Color lightColor}) get brightnessColor => _brightnessColor;
}
