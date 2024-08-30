import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/core/theme/get_theme_mode_color.dart';
import 'package:lalafolike/router/router.dart';

class FloatingAction extends StatelessWidget {
  const FloatingAction({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      onPressed: () => context.pushRoute(const AnnouncementsRoute()),
      child: Icon(
        Icons.add,
        color: getThemeModeColor.brightnessColor(context,
            lightColor: ColorConstants.white, darkColor: ColorConstants.black),
        size: 30,
      ),
    );
  }
}
