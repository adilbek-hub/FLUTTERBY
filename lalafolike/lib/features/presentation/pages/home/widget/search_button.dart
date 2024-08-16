import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/core/theme/get_theme_mode_color.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    this.width = 280,
    this.height = 35,
    this.title = 'Я ищу...',
    this.onTap,
    super.key,
  });
  final double? width;
  final double? height;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: getThemeModeColor.brightnessColor(context,
              lightColor: ColorConstants.lightConatinerColor,
              darkColor: ColorConstants.darkContainerColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            const SizedBox(width: 10),
            Icon(
              Icons.search,
              color: getThemeModeColor.brightnessColor(
                context,
                lightColor: ColorConstants.black,
                darkColor: ColorConstants.darkTextColor,
              ),
            ),
            const SizedBox(width: 15),
            AppText(
              title: title,
              textType: TextType.subtitle,
              color: getThemeModeColor.brightnessColor(
                context,
                lightColor: ColorConstants.lightTextColor,
                darkColor: ColorConstants.darkTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
