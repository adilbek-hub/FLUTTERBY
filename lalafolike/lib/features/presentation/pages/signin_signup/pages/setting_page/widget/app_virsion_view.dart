import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/get_theme_mode_color.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/enams/assets_constants.dart';

class AppVersionView extends StatelessWidget {
  const AppVersionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AssetConstants.rocket.png,
          width: 20,
        ),
        const SizedBox(width: 6),
        AppText(
          title: 'v2.182.1.0 - 19035',
          textType: TextType.subtitle,
          color: getThemeModeColor.brighnessTheme(context),
        ),
      ],
    );
  }
}
