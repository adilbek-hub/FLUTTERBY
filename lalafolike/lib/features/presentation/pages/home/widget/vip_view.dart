import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/core/theme/get_theme_mode_color.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/enams/assets_constants.dart';

class VipView extends StatelessWidget {
  const VipView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
          decoration: BoxDecoration(
              color: getThemeModeColor.brightnessColor(
                context,
                lightColor: ColorConstants.primary,
                darkColor: ColorConstants.primary,
              ),
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            children: [
              Image.asset(
                AssetConstants.crown.png,
                width: 18,
                color: ColorConstants.yellow,
              ),
              const SizedBox(width: 3),
              const AppText(title: 'VIP', textType: TextType.promocode),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              color: ColorConstants.grey.withOpacity(0.8),
              shape: BoxShape.circle),
          child: Image.asset(
            AssetConstants.gromko.png,
          ),
        ),
      ],
    );
  }
}
