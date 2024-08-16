import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:like_lalafo/core/theme/color_constants.dart';
import 'package:like_lalafo/core/theme/get_theme_mode_color.dart';

class NavigationBars extends StatelessWidget {
  const NavigationBars({
    super.key,
    required this.tabsRouter,
  });

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor: Colors.transparent,
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return const TextStyle(
              fontSize: 12,
              color: Colors.green,
            );
          }
          return const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          );
        }),
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return const IconThemeData(
              color: Colors.green,
            );
          }
          return const IconThemeData(
            color: Colors.grey,
          );
        }),
      ),
      child: NavigationBar(
        backgroundColor: getThemeModeColor.brightnessColor(
          context,
          lightColor: ColorConstants.white,
          darkColor: ColorConstants.darkContainerColor,
        ),
        onDestinationSelected: (index) {
          if (index != 2) {
            if (index > 2) {
              tabsRouter.setActiveIndex(index - 1);
            } else {
              tabsRouter.setActiveIndex(index);
            }
          }
        },
        selectedIndex: tabsRouter.activeIndex < 2
            ? tabsRouter.activeIndex
            : tabsRouter.activeIndex + 1,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'главное',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite),
            label: 'избранные',
          ),
          NavigationDestination(
            icon: SizedBox.shrink(),
            label: 'подать',
            enabled: false,
          ),
          NavigationDestination(
            icon: Icon(Icons.email),
            label: 'чаты',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'профиль',
          ),
        ],
      ),
    );
  }
}
