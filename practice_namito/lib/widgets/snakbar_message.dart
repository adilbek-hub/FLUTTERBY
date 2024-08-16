import 'package:flutter/material.dart';
import 'package:practice_namito/theme/colors.dart';
import 'package:practice_namito/widgets/app_text.dart';

class SnackBarMessage {
  static SnackBar customSnackBar(
      {required BuildContext context,
      required void Function() onPressed,
      required String message,
      required String label,
      Color? backgroundColor,
      Color? textColor}) {
    return SnackBar(
      backgroundColor: backgroundColor,
      action: SnackBarAction(
          textColor: textColor, label: label, onPressed: onPressed),
      content: AppText(
          title: message,
          textType: TextType.body,
          color: textColor ?? ColorConstants.white),
    );
  }

  static SnackBar defaultSnackBar(
      {required BuildContext context,
      required String message,
      EdgeInsetsGeometry? padding,
      Color? backgroundColor,
      ShapeBorder? shape,
      Color? textColor}) {
    return SnackBar(
      duration: Durations.extralong3,
      backgroundColor: backgroundColor,
      padding: padding,
      shape: shape,
      behavior: SnackBarBehavior.floating,
      elevation: 0,
      content: AppText(
          title: message,
          textType: TextType.body,
          textAlign: TextAlign.center,
          maxLines: 2,
          color: textColor ?? ColorConstants.white),
    );
  }
}
