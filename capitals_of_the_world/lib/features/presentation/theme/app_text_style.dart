import 'package:capitals_of_the_world/features/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const titleTextStyle = TextStyle(
    color: AppColors.black,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );
  static const numberFalseStyle = TextStyle(
    color: AppColors.red,
    fontWeight: FontWeight.bold,
  );
  static const numberTrueStyle = TextStyle(
    color: AppColors.green,
    fontWeight: FontWeight.bold,
  );
  static const capitalNameStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
}
