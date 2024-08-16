import 'package:flutter/material.dart';
import 'package:like_lalafo/core/theme/get_theme_mode_color.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';

class SettingCard extends StatelessWidget {
  const SettingCard({
    super.key,
    this.onTap,
    this.text,
  });
  final Function()? onTap;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText(
              title: text ?? '',
              textType: TextType.header,
              color: getThemeModeColor.brighnessTheme(context),
              fontWeight: FontWeight.w400,
            ),
            const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
