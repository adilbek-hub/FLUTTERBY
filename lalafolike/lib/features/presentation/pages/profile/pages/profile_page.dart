import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/basic_widgets/custom_circular_container.dart';

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
          leading: const CustomCircularContainer(),
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
            Row(
              children: [
                CustomCircularContainer(),
                CustomCircularContainer(),
              ],
            ),
          ],
        ),
        SliverAppBar(
          pinned: true,
          flexibleSpace: AppText(
            title: 'Отвечает на 80% сообщений\nОбычно в течение дня',
            textType: TextType.subtitle,
            color: Theme.of(context).textTheme.displayLarge!.color,
          ),
        ),
      ],
    ));
  }
}
