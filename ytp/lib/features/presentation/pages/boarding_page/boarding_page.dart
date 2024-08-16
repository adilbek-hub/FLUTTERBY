import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ytp/constants/enams/assets_constants.dart';
import 'package:ytp/core/theme/color_constants.dart';
import 'package:ytp/core/theme/get_theme_mode_color.dart';
import 'package:ytp/router/router.dart';

@RoutePage()
class BoardingPage extends StatelessWidget {
  const BoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        ConvertRoute(),
        BayRoute(),
        StatisticsRoute(),
        SettingsRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return RefreshIndicator.adaptive(
          onRefresh: () async {},
          child: Scaffold(
            body: child,
            bottomNavigationBar: NavigationBars(tabsRouter: tabsRouter),
          ),
        );
      },
    );
  }
}

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
        selectedIndex: tabsRouter.activeIndex,
        onDestinationSelected: tabsRouter.setActiveIndex,
        destinations: <Widget>[
          NavigationDestination(
            icon: SvgPicture.asset(AssetConstants.luch.svg),
            label: 'Convert',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(AssetConstants.basket.svg),
            label: 'Buy',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(AssetConstants.chart.svg),
            label: 'Statistics',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(AssetConstants.setting.svg),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
