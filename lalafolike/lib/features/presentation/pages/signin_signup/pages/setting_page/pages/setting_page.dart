import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/core/theme/get_theme_mode_color.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/enams/assets_constants.dart';
import 'package:lalafolike/features/presentation/pages/signin_signup/pages/setting_page/widget/setting_card.dart';
import 'package:lalafolike/router/router.dart';

@RoutePage()
class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: const BackButton(),
        centerTitle: true,
        title: AppText(
          title: 'Настройки',
          textType: TextType.body,
          color: Theme.of(context).textTheme.bodyLarge?.color,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: getThemeModeColor.brightnessColor(
                    context,
                    lightColor: ColorConstants.white,
                    darkColor: ColorConstants.darkContainerColor,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    SettingCard(
                      text: 'Темная тема',
                      onTap: () => context.router.push(
                        const ThemeModeRoute(),
                      ),
                    ),
                    const Divider(
                      thickness: 0.5,
                      indent: 10,
                    ),
                    SettingCard(
                        text: 'Пригласить друзей',
                        onTap: () =>
                            context.router.push(const ThemeModeRoute())),
                    const Divider(
                      thickness: 0.5,
                      indent: 10,
                    ),
                    SettingCard(
                        text: 'Страна',
                        onTap: () =>
                            context.router.push(const ThemeModeRoute())),
                    const Divider(
                      thickness: 0.5,
                      indent: 10,
                    ),
                    SettingCard(
                        text: 'Язык',
                        onTap: () =>
                            context.router.push(const ThemeModeRoute())),
                    const Divider(
                      thickness: 0.5,
                      indent: 10,
                    ),
                    SettingCard(
                        text: 'Изменить пароль',
                        onTap: () =>
                            context.router.push(const ThemeModeRoute())),
                    const Divider(
                      thickness: 0.5,
                      indent: 10,
                    ),
                    SettingCard(
                        text: 'Управление уведомлениями',
                        onTap: () =>
                            context.router.push(const ThemeModeRoute())),
                    const Divider(
                      thickness: 0.5,
                      indent: 10,
                    ),
                    SettingCard(
                        text: 'Помощь',
                        onTap: () =>
                            context.router.push(const ThemeModeRoute())),
                    const Divider(
                      thickness: 0.5,
                      indent: 10,
                    ),
                    SettingCard(
                        text: 'Правовая информация',
                        onTap: () =>
                            context.router.push(const ThemeModeRoute())),
                    const Divider(
                      thickness: 0.5,
                      indent: 10,
                    ),
                    SettingCard(
                        text: 'Правило lalafo',
                        onTap: () =>
                            context.router.push(const ThemeModeRoute())),
                    const Divider(
                      thickness: 0.5,
                      indent: 10,
                    ),
                    SettingCard(
                        text: 'О компании',
                        onTap: () =>
                            context.router.push(const ThemeModeRoute())),
                    const Divider(
                      thickness: 0.5,
                      indent: 10,
                    ),
                    SettingCard(
                        text: 'Контакты',
                        onTap: () =>
                            context.router.push(const ThemeModeRoute())),
                    const Divider(
                      thickness: 0.5,
                      indent: 10,
                    ),
                    SettingCard(
                        text: 'Реклама',
                        onTap: () =>
                            context.router.push(const ThemeModeRoute())),
                    const Divider(
                      thickness: 0.5,
                      indent: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 15,
                                backgroundColor: ColorConstants.grey,
                                child: Icon(
                                  Icons.logout,
                                  color: ColorConstants.darkTextColor,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              AppText(
                                title: 'Выйти',
                                textType: TextType.body,
                                color:
                                    getThemeModeColor.brighnessTheme(context),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(Icons.chevron_right),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AssetConstants.rocket.png,
                    width: 20,
                  ),
                  const SizedBox(width: 6),
                  AppText(
                    title: 'v2.182.1.0 - 19035',
                    textType: TextType.body,
                    color: getThemeModeColor.brighnessTheme(context),
                  ),
                ],
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
