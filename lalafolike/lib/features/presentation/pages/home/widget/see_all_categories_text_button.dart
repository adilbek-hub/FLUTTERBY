import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/core/theme/get_theme_mode_color.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/router/router.dart';

class SeeAllCategoriesTextButton extends StatelessWidget {
  const SeeAllCategoriesTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(
            title: 'Категории',
            textType: TextType.header,
            color: Theme.of(context).textTheme.displayMedium!.color,
            fontWeight: FontWeight.w600,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  context.pushRoute(const CategoryRoute());
                },
                child: AppText(
                  title: 'Смотреть все',
                  textType: TextType.subtitle,
                  color: Theme.of(context).textTheme.displayLarge!.color,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 5),
              Icon(
                Icons.arrow_forward_ios_sharp,
                size: 15,
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
