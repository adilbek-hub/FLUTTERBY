// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AfterSplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AfterSplashPage(),
      );
    },
    AnnounSementsCategoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AnnounSementsCategoryPage(),
      );
    },
    AnnounSementsSubCategoryRoute.name: (routeData) {
      final args = routeData.argsAs<AnnounSementsSubCategoryRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AnnounSementsSubCategoryPage(
          key: args.key,
          subCategoryName: args.subCategoryName,
          subcategory: args.subcategory,
        ),
      );
    },
    AnnouncementsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AnnouncementsPage(),
      );
    },
    AnnounsementviewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AnnounsementviewPage(),
      );
    },
    CategoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CategoryPage(),
      );
    },
    ChatsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatsPage(),
      );
    },
    FavoriteRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavoritePage(),
      );
    },
    FromHomeRouterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FromHomeRouterPage(),
      );
    },
    FromSignInSignUpRouterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FromSignInSignUpRouterPage(),
      );
    },
    GoogleMapRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GoogleMapPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnBoardingPage(),
      );
    },
    PriceRoute.name: (routeData) {
      final args = routeData.argsAs<PriceRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PricePage(
          key: args.key,
          sunCategoryName: args.sunCategoryName,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    SettingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingPage(),
      );
    },
    SignInSignUpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignInSignUpPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    ThemeModeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ThemeModePage(),
      );
    },
  };
}

/// generated route for
/// [AfterSplashPage]
class AfterSplashRoute extends PageRouteInfo<void> {
  const AfterSplashRoute({List<PageRouteInfo>? children})
      : super(
          AfterSplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'AfterSplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AnnounSementsCategoryPage]
class AnnounSementsCategoryRoute extends PageRouteInfo<void> {
  const AnnounSementsCategoryRoute({List<PageRouteInfo>? children})
      : super(
          AnnounSementsCategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnnounSementsCategoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AnnounSementsSubCategoryPage]
class AnnounSementsSubCategoryRoute
    extends PageRouteInfo<AnnounSementsSubCategoryRouteArgs> {
  AnnounSementsSubCategoryRoute({
    Key? key,
    required String subCategoryName,
    required List<ChildrenAnnounsement> subcategory,
    List<PageRouteInfo>? children,
  }) : super(
          AnnounSementsSubCategoryRoute.name,
          args: AnnounSementsSubCategoryRouteArgs(
            key: key,
            subCategoryName: subCategoryName,
            subcategory: subcategory,
          ),
          initialChildren: children,
        );

  static const String name = 'AnnounSementsSubCategoryRoute';

  static const PageInfo<AnnounSementsSubCategoryRouteArgs> page =
      PageInfo<AnnounSementsSubCategoryRouteArgs>(name);
}

class AnnounSementsSubCategoryRouteArgs {
  const AnnounSementsSubCategoryRouteArgs({
    this.key,
    required this.subCategoryName,
    required this.subcategory,
  });

  final Key? key;

  final String subCategoryName;

  final List<ChildrenAnnounsement> subcategory;

  @override
  String toString() {
    return 'AnnounSementsSubCategoryRouteArgs{key: $key, subCategoryName: $subCategoryName, subcategory: $subcategory}';
  }
}

/// generated route for
/// [AnnouncementsPage]
class AnnouncementsRoute extends PageRouteInfo<void> {
  const AnnouncementsRoute({List<PageRouteInfo>? children})
      : super(
          AnnouncementsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnnouncementsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AnnounsementviewPage]
class AnnounsementviewRoute extends PageRouteInfo<void> {
  const AnnounsementviewRoute({List<PageRouteInfo>? children})
      : super(
          AnnounsementviewRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnnounsementviewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CategoryPage]
class CategoryRoute extends PageRouteInfo<void> {
  const CategoryRoute({List<PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatsPage]
class ChatsRoute extends PageRouteInfo<void> {
  const ChatsRoute({List<PageRouteInfo>? children})
      : super(
          ChatsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavoritePage]
class FavoriteRoute extends PageRouteInfo<void> {
  const FavoriteRoute({List<PageRouteInfo>? children})
      : super(
          FavoriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FromHomeRouterPage]
class FromHomeRouterRoute extends PageRouteInfo<void> {
  const FromHomeRouterRoute({List<PageRouteInfo>? children})
      : super(
          FromHomeRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'FromHomeRouterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FromSignInSignUpRouterPage]
class FromSignInSignUpRouterRoute extends PageRouteInfo<void> {
  const FromSignInSignUpRouterRoute({List<PageRouteInfo>? children})
      : super(
          FromSignInSignUpRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'FromSignInSignUpRouterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GoogleMapPage]
class GoogleMapRoute extends PageRouteInfo<void> {
  const GoogleMapRoute({List<PageRouteInfo>? children})
      : super(
          GoogleMapRoute.name,
          initialChildren: children,
        );

  static const String name = 'GoogleMapRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnBoardingPage]
class OnBoardingRoute extends PageRouteInfo<void> {
  const OnBoardingRoute({List<PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PricePage]
class PriceRoute extends PageRouteInfo<PriceRouteArgs> {
  PriceRoute({
    Key? key,
    required String sunCategoryName,
    List<PageRouteInfo>? children,
  }) : super(
          PriceRoute.name,
          args: PriceRouteArgs(
            key: key,
            sunCategoryName: sunCategoryName,
          ),
          initialChildren: children,
        );

  static const String name = 'PriceRoute';

  static const PageInfo<PriceRouteArgs> page = PageInfo<PriceRouteArgs>(name);
}

class PriceRouteArgs {
  const PriceRouteArgs({
    this.key,
    required this.sunCategoryName,
  });

  final Key? key;

  final String sunCategoryName;

  @override
  String toString() {
    return 'PriceRouteArgs{key: $key, sunCategoryName: $sunCategoryName}';
  }
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingPage]
class SettingRoute extends PageRouteInfo<void> {
  const SettingRoute({List<PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignInSignUpPage]
class SignInSignUpRoute extends PageRouteInfo<void> {
  const SignInSignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignInSignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInSignUpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ThemeModePage]
class ThemeModeRoute extends PageRouteInfo<void> {
  const ThemeModeRoute({List<PageRouteInfo>? children})
      : super(
          ThemeModeRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThemeModeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
