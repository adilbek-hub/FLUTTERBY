import 'package:flutter/material.dart';
import 'package:like_lalafo/core/theme/color_constants.dart';
import 'package:like_lalafo/core/theme/get_theme_mode_color.dart';
import 'package:like_lalafo/features/presentation/pages/announsements/pages/announcements_page.dart';

class FloatingAction extends StatelessWidget {
  const FloatingAction({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: getThemeModeColor.brightnessColor(context,
          lightColor: ColorConstants.green, darkColor: ColorConstants.green),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AnnouncementsPage()));
      },
      child: Icon(
        Icons.add,
        color: getThemeModeColor.brightnessColor(context,
            lightColor: ColorConstants.white, darkColor: ColorConstants.black),
        size: 30,
      ),
    );
  }
}
