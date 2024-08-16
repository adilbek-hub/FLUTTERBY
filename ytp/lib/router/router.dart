import 'package:auto_route/auto_route.dart';
import 'package:ytp/features/presentation/pages/bay_page/bay_page.dart';
import 'package:ytp/features/presentation/pages/boarding_page/boarding_page.dart';
import 'package:ytp/features/presentation/pages/convert_page/convert_page.dart';
import 'package:ytp/features/presentation/pages/settings_page/settings_page.dart';
import 'package:ytp/features/presentation/pages/statictist_page/statistics_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: BoardingRoute.page, initial: true, children: [
          AutoRoute(page: ConvertRoute.page, initial: false),
          AutoRoute(page: BayRoute.page, initial: false),
          AutoRoute(page: StatisticsRoute.page, initial: false),
          AutoRoute(page: SettingsRoute.page, initial: false),
        ]),
      ];
}
