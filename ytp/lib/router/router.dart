import 'package:auto_route/auto_route.dart';
import 'package:ytp/features/presentation/pages/bay_page/bay_page.dart';
import 'package:ytp/features/presentation/pages/bottom_nav/pages/bottom_nav_page.dart';
import 'package:ytp/features/presentation/pages/convert_page/convert_page.dart';
import 'package:ytp/features/presentation/pages/onboarding/on_board_page.dart';
import 'package:ytp/features/presentation/pages/preloaded/pages/on_boarding_page.dart';
import 'package:ytp/features/presentation/pages/settings/settings_page.dart';
import 'package:ytp/features/presentation/pages/statictist/statistics_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: PreloadedRoute.page, initial: true),
        AutoRoute(page: OnBoardingRoute.page, initial: false),
        AutoRoute(page: BottomNavRoute.page, initial: false, children: [
          AutoRoute(page: ConvertRoute.page, initial: false),
          AutoRoute(page: BayRoute.page, initial: false),
          AutoRoute(page: StatisticsRoute.page, initial: false),
          AutoRoute(page: SettingsRoute.page, initial: false),
        ]),
      ];
}
