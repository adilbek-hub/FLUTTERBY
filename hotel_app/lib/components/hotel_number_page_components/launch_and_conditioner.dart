import 'package:flutter/material.dart';
import 'package:hotel_app/constants/constants_export.dart';

class LaunchAndConditioner extends StatelessWidget {
  const LaunchAndConditioner({
    Key? key,
    required this.peculiarities0,
    required this.peculiarities1,
  }) : super(key: key);
  final String peculiarities0;
  final String peculiarities1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppSize.width15,
        Text(
          peculiarities0,
          style: AppTextStyles.tStyle4,
        ),
        AppSize.width28,
        Text(
          peculiarities1,
          style: AppTextStyles.tStyle4,
        ),
      ],
    );
  }
}
