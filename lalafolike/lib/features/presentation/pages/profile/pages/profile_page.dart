import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/basic_widgets/custom_circular_container.dart';
import 'package:lalafolike/features/presentation/pages/profile/widget/profile_banner.dart';
import 'package:lalafolike/features/presentation/pages/profile/widget/vallet_card.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: false,
            forceMaterialTransparency: false,
            pinned: true,
            leading: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomCircularContainer(),
            ),
            title: Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: AppText(
                    title: 'Nurzat Usenova',
                    textType: TextType.header,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: AppText(
                    title: 'Редактировать профиль',
                    textType: TextType.subtitle,
                    color: Theme.of(context).textTheme.displayLarge!.color,
                  ),
                ),
              ],
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    CustomCircularContainer(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.edit,
                          color: ColorConstants.lightTextColor),
                    ),
                    SizedBox(width: 10),
                    CustomCircularContainer(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.settings,
                        color: ColorConstants.lightTextColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SliverAppBar(
            pinned: true,
            flexibleSpace: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: AppText(
                title: 'Отвечает на 80% сообщений\nОбычно в течение дня',
                textType: TextType.subtitle,
                color: Theme.of(context).textTheme.displayLarge!.color,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ProfileBanner(),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: VallerCard(),
            ),
          ),
        ],
      ),
    );
  }
}
