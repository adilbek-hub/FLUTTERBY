import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/pages/announsements/model/announsemmentmodel.dart';
import 'package:like_lalafo/features/presentation/pages/announsements/pages/announcements_page.dart';
import 'package:like_lalafo/features/presentation/pages/announsements/pages/announsementsubcategory_page.dart';
import 'package:like_lalafo/features/presentation/pages/announsements/pages/announsementview_page.dart';
import 'package:like_lalafo/features/presentation/pages/announsements/pages/annoutsements_category.dart';
import 'package:like_lalafo/features/presentation/pages/announsements/pages/google_map_page.dart';
import 'package:like_lalafo/features/presentation/pages/announsements/pages/price_page.dart';
import 'package:like_lalafo/features/presentation/pages/chat/chats_page.dart';
import 'package:like_lalafo/features/presentation/pages/favorite/pages/favorites_page.dart';
import 'package:like_lalafo/features/presentation/pages/home/from_home_router.dart';
import 'package:like_lalafo/features/presentation/pages/home/pages/category/category_page.dart';
import 'package:like_lalafo/features/presentation/pages/home/pages/home_page.dart';
import 'package:like_lalafo/features/presentation/pages/on_boarding/on_boarding_page.dart';
import 'package:like_lalafo/features/presentation/pages/profile/pages/profile_page.dart';
import 'package:like_lalafo/features/presentation/pages/signin_signup/from_signin_signup_route.dart';
import 'package:like_lalafo/features/presentation/pages/signin_signup/pages/setting_page/pages/setting_page.dart';
import 'package:like_lalafo/features/presentation/pages/signin_signup/pages/setting_page/pages/theme_mode_page.dart';
import 'package:like_lalafo/features/presentation/pages/signin_signup/pages/singin_signup_page/signin_signup_page.dart';
import 'package:like_lalafo/features/presentation/pages/splash/after_spash.dart';
import 'package:like_lalafo/features/presentation/pages/splash/splash_page.dart';

part "router.gr.dart";

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: GoogleMapRoute.page, initial: true),
        AutoRoute(page: AnnouncementsRoute.page, initial: false),
        AutoRoute(page: AnnounSementsCategoryRoute.page, initial: false),
        AutoRoute(page: AnnounSementsSubCategoryRoute.page, initial: false),
        AutoRoute(page: PriceRoute.page, initial: false),
        AutoRoute(page: AnnounsementviewRoute.page, initial: false),
        AutoRoute(page: SplashRoute.page, initial: false),
        AutoRoute(page: AfterSplashRoute.page, initial: false),
        AutoRoute(page: SettingRoute.page, initial: false),
        AutoRoute(page: ThemeModeRoute.page, initial: false),
        AutoRoute(page: ProfileRoute.page, initial: false),
        AutoRoute(page: OnBoardingRoute.page, initial: false, children: [
          AutoRoute(page: FromHomeRouterRoute.page, initial: false, children: [
            AutoRoute(page: HomeRoute.page, initial: false),
            AutoRoute(page: CategoryRoute.page),
          ]),
          AutoRoute(page: FavoriteRoute.page, initial: false),
          AutoRoute(page: ChatsRoute.page, initial: false),
          AutoRoute(
              page: FromSignInSignUpRouterRoute.page,
              initial: false,
              children: [
                AutoRoute(page: SignInSignUpRoute.page, initial: false),
              ]),
        ]),
      ];
}
