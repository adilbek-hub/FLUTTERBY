import 'package:flutter/material.dart';
import 'package:like_lalafo/core/theme/color_constants.dart';
import 'package:like_lalafo/core/theme/get_theme_mode_color.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';

class SignOutView extends StatelessWidget {
  const SignOutView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 15,
                backgroundColor: ColorConstants.grey,
                child: Icon(
                  Icons.logout,
                  color: ColorConstants.darkTextColor,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              AppText(
                title: 'Выйти',
                textType: TextType.body,
                color: getThemeModeColor.brighnessTheme(context),
              ),
            ],
          ),
          const Row(
            children: [
              Icon(Icons.chevron_right),
            ],
          ),
        ],
      ),
    );
  }
}
