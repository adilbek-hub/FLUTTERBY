import 'package:auto_route/auto_route.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:lalafolike/features/presentation/pages/announsements/model/announsemmentmodel.dart';
import 'package:lalafolike/features/presentation/pages/announsements/pages/announcements_page.dart';
import 'package:lalafolike/features/presentation/pages/announsements/pages/announsementsubcategory_page.dart';
import 'package:lalafolike/features/presentation/pages/announsements/pages/announsementview_page.dart';
import 'package:lalafolike/features/presentation/pages/announsements/pages/annoutsements_category.dart';
import 'package:lalafolike/features/presentation/pages/announsements/pages/google_map_page.dart';
import 'package:lalafolike/features/presentation/pages/announsements/pages/price_page.dart';
import 'package:lalafolike/features/presentation/pages/chat/pages/chat_with_user.dart';
import 'package:lalafolike/features/presentation/pages/chat/pages/chats_page.dart';
import 'package:lalafolike/features/presentation/pages/chat/pages/notification_page.dart';
import 'package:lalafolike/features/presentation/pages/favorite/pages/favorites_page.dart';
import 'package:lalafolike/features/presentation/pages/home/from_home_router.dart';
import 'package:lalafolike/features/presentation/pages/home/model/category.dart';
import 'package:lalafolike/features/presentation/pages/home/model/products.dart';
import 'package:lalafolike/features/presentation/pages/home/pages/category/category_detail_page.dart';
import 'package:lalafolike/features/presentation/pages/home/pages/category/category_page.dart';
import 'package:lalafolike/features/presentation/pages/home/pages/filter_page.dart';
import 'package:lalafolike/features/presentation/pages/home/pages/home_page.dart';
import 'package:lalafolike/features/presentation/pages/home/pages/product_detail_page.dart';
import 'package:lalafolike/features/presentation/pages/on_boarding/on_boarding_page.dart';
import 'package:lalafolike/features/presentation/pages/profile/pages/profile_page.dart';
import 'package:lalafolike/features/presentation/pages/signin_signup/from_signin_signup_route.dart';
import 'package:lalafolike/features/presentation/pages/signin_signup/pages/setting_page/pages/setting_page.dart';
import 'package:lalafolike/features/presentation/pages/signin_signup/pages/setting_page/pages/theme_mode_page.dart';
import 'package:lalafolike/features/presentation/pages/signin_signup/pages/singin_signup_page/signin_signup_page.dart';
import 'package:lalafolike/features/presentation/pages/splash/after_spash.dart';
import 'package:lalafolike/features/presentation/pages/splash/splash_page.dart';

part "router.gr.dart";

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: ProductDetailRoute.page, initial: false),
        AutoRoute(page: NotificationRoute.page, initial: false),
        AutoRoute(page: ChatWithUserRoute.page, initial: false),
        AutoRoute(page: FilterRoute.page, initial: false),
        AutoRoute(page: GoogleMapRoute.page, initial: false),
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
        AutoRoute(page: OnBoardingRoute.page, initial: true, children: [
          AutoRoute(page: FromHomeRouterRoute.page, initial: false, children: [
            AutoRoute(page: HomeRoute.page, initial: false),
            AutoRoute(page: CategoryDetailRoute.page, initial: false),
            AutoRoute(page: CategoryRoute.page),
          ]),
          AutoRoute(page: FavoriteRoute.page, initial: false),
          AutoRoute(page: ChatsRoute.page, initial: false),
          AutoRoute(
              page: FromSignInSignUpRouterRoute.page,
              initial: false,
              children: [
                AutoRoute(page: ProfileRoute.page, initial: false),
              ]),
        ]),
      ];
}
