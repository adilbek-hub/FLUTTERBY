import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NavigationBars extends StatelessWidget {
  const NavigationBars({super.key, required this.tabsRouter});

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
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
    );
  }
}
