import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:like_lalafo/core/theme/color_constants.dart';
import 'package:like_lalafo/core/theme/get_theme_mode_color.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';
import 'package:like_lalafo/router/router.dart';

class SeeAllCategoriesTextButton extends StatelessWidget {
  const SeeAllCategoriesTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(
            title: 'Категории',
            textType: TextType.subtitle,
            color: getThemeModeColor.brighnessTheme(context),
            fontWeight: FontWeight.w700,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  context.pushRoute(const CategoryRoute());
                },
                child: AppText(
                  title: 'Смотреть все',
                  textType: TextType.promocode,
                  color: getThemeModeColor.brightnessColor(
                    context,
                    lightColor: ColorConstants.lightTextColor,
                    darkColor: ColorConstants.darkTextColor,
                  ),
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 5),
              Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10,
                color: getThemeModeColor.brightnessColor(
                  context,
                  lightColor: ColorConstants.lightIconColor,
                  darkColor: ColorConstants.darkTextColor,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
