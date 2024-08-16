import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/core/theme/get_theme_mode_color.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';

class FeaturedNewChooseButton extends StatefulWidget {
  final ValueChanged<bool> onSelectionChanged;

  const FeaturedNewChooseButton({super.key, required this.onSelectionChanged});

  @override
  State<FeaturedNewChooseButton> createState() =>
      _FeaturedNewChooseButtonState();
}

class _FeaturedNewChooseButtonState extends State<FeaturedNewChooseButton> {
  bool _isRecommendedSelected = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 38,
            decoration: BoxDecoration(
              color: getThemeModeColor.brightnessColor(
                context,
                lightColor: ColorConstants.lightConatinerColor,
                darkColor: ColorConstants.darkContainerColor,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 3),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isRecommendedSelected = true;
                      });
                      widget.onSelectionChanged(true);
                    },
                    child: Container(
                      height: 34,
                      decoration: BoxDecoration(
                        color: _isRecommendedSelected
                            ? getThemeModeColor.brightnessColor(
                                context,
                                lightColor: ColorConstants.white,
                                darkColor: ColorConstants.darkbgcolor,
                              )
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      child: AppText(
                        title: 'Рекомендуемые',
                        textType: TextType.subtitle,
                        fontWeight: FontWeight.bold,
                        color: getThemeModeColor.brighnessTheme(context),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isRecommendedSelected = false;
                      });
                      widget.onSelectionChanged(false);
                    },
                    child: Container(
                      height: 34,
                      decoration: BoxDecoration(
                        color: !_isRecommendedSelected
                            ? getThemeModeColor.brightnessColor(
                                context,
                                lightColor: ColorConstants.white,
                                darkColor: ColorConstants.darkbgcolor,
                              )
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      child: AppText(
                        title: 'Новые',
                        textType: TextType.subtitle,
                        fontWeight: FontWeight.bold,
                        color: getThemeModeColor.brighnessTheme(context),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 3),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
