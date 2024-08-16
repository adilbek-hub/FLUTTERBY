import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/pages/on_boarding/widget/floating_action_button.dart';
import 'package:like_lalafo/features/presentation/pages/on_boarding/widget/navigator_bar.dart';
import 'package:like_lalafo/router/router.dart';

@RoutePage()
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        FavoriteRoute(),
        ChatsRoute(),
        SignInSignUpRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: const FloatingAction(),
          bottomNavigationBar: NavigationBars(tabsRouter: tabsRouter),
        );
      },
    );
  }
}
