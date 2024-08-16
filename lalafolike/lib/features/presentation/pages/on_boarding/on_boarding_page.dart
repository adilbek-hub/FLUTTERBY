import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lalafolike/features/presentation/pages/on_boarding/widget/floating_action_button.dart';
import 'package:lalafolike/features/presentation/pages/on_boarding/widget/navigator_bar.dart';
import 'package:lalafolike/router/router.dart';

@RoutePage()
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Замените на ваше условие
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        FavoriteRoute(),
        ChatsRoute(),
        SignInSignUpRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return RefreshIndicator.adaptive(
          onRefresh: () async {},
          child: Scaffold(
            resizeToAvoidBottomInset:
                false, // Баскычтоп пайда болгондо өлчөмүн өзгөртүүгө жол бербейт
            body: child,
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: const FloatingAction(),
            bottomNavigationBar: NavigationBars(tabsRouter: tabsRouter),
          ),
        );
      },
    );
  }
}
