import 'package:capitals_of_the_world/features/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';

class LineDivider extends StatelessWidget {
  const LineDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      indent: 14,
      endIndent: 14,
      color: AppColors.black,
    );
  }
}
