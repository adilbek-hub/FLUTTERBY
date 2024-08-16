import 'package:flutter/material.dart';
import 'package:hotel_app/constants/constants_export.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 94,
      height: 94,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.containerScreen,
      ),
      child: AppImages.flawerImage,
    );
  }
}
