import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:like_lalafo/core/theme/color_constants.dart';
import 'package:like_lalafo/core/theme/get_theme_mode_color.dart';
import 'package:like_lalafo/core/theme/theme_notifier.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';
import 'package:like_lalafo/features/presentation/basic_widgets/def_elevated_button.dart';
import 'package:like_lalafo/features/presentation/pages/signin_signup/pages/setting_page/pages/theme_mode_page_mixin.dart';
import 'package:like_lalafo/features/presentation/pages/signin_signup/pages/setting_page/widget/custom_radio_list_tle.dart';
import 'package:provider/provider.dart';

@RoutePage()
class ThemeModePage extends StatefulWidget {
  const ThemeModePage({super.key});

  @override
  State<ThemeModePage> createState() => _ThemeModePageState();
}

class _ThemeModePageState extends State<ThemeModePage> with ThemeModePageMixin {
  @override
  Widget build(BuildContext context) {
    ThemeNotifier themeNotifier = Provider.of<ThemeNotifier>(context);

    return Scaffold(
      backgroundColor: getThemeModeColor.brightnessColor(
        context,
        lightColor: ColorConstants.darkContainerColor,
        darkColor: ColorConstants.darkContainerColor,
      ),
      appBar: AppBar(
        centerTitle: true,
        title: AppText(
          title: 'Темная тема',
          textType: TextType.body,
          color: Theme.of(context).textTheme.bodyLarge?.color,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: getThemeModeColor.brightnessColor(
                  context,
                  lightColor: ColorConstants.white,
                  darkColor: ColorConstants.darkbgcolor,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    CustomRadioListTile(
                      value: 1,
                      groupValue: selectedValue,
                      title: 'Вкл.',
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value!;
                          themeNotifier.setTheme(ThemeMode.dark);
                          saveSelectedValue(selectedValue);
                        });
                      },
                    ),
                    const Divider(color: Colors.grey, thickness: 0.5),
                    CustomRadioListTile(
                      value: 2,
                      groupValue: selectedValue,
                      title: 'Выкл.',
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value!;
                          themeNotifier.setTheme(ThemeMode.light);
                          saveSelectedValue(selectedValue);
                        });
                      },
                    ),
                    const Divider(color: Colors.grey, thickness: 0.5),
                    CustomRadioListTile(
                      value: 3,
                      groupValue: selectedValue,
                      title: 'System default',
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value!;
                          themeNotifier.setTheme(ThemeMode.system);
                          saveSelectedValue(selectedValue);
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              color: getThemeModeColor.brightnessColor(
                context,
                lightColor: ColorConstants.white,
                darkColor: ColorConstants.darkbgcolor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 25),
                    AppText(
                      title: 'Пожалуйста, оставьте отзыв',
                      textType: TextType.header,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                    ),
                    const SizedBox(height: 10),
                    AppText(
                        textAlign: TextAlign.center,
                        title:
                            'Нам очен важна обратная связь! \nПоделитесь своими впечатлениями \nо темной теме на lalafo.',
                        textType: TextType.body,
                        color: getThemeModeColor.brightnessColor(
                          context,
                          lightColor: ColorConstants.black,
                          darkColor: ColorConstants.darkTextColor,
                        )),
                    const SizedBox(height: 25),
                    DefElevatedButton(
                      height: 45,
                      title: 'Оставить отзыв',
                      textColor: Theme.of(context).brightness == Brightness.dark
                          ? ColorConstants.black
                          : ColorConstants.white,
                      backgroundColor:
                          Theme.of(context).brightness == Brightness.dark
                              ? ColorConstants.green
                              : ColorConstants.green,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
