import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/core/theme/get_theme_mode_color.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/pages/signin_signup/pages/singin_signup_page/widget/sign_in_view.dart';
import 'package:lalafolike/features/presentation/pages/signin_signup/pages/singin_signup_page/widget/sign_up_view.dart';
import 'package:lalafolike/router/router.dart';

@RoutePage()
class SignInSignUpPage extends StatefulWidget {
  const SignInSignUpPage({super.key});

  @override
  State<SignInSignUpPage> createState() => _SignInSignUpPageState();
}

class _SignInSignUpPageState extends State<SignInSignUpPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        color: getThemeModeColor.brightnessColor(
          context,
          lightColor: ColorConstants.white,
          darkColor: ColorConstants.darkbgcolor,
        ),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              forceMaterialTransparency: true,
              pinned: true,
              floating: true,
              snap: true,
              title: AppText(
                title: 'Начнем!',
                textType: TextType.body,
                color: getThemeModeColor.brighnessTheme(context),
              ),
              centerTitle: true,
              actions: [
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: IconButton(
                        onPressed: () {
                          context.router.push(const SettingRoute());
                        },
                        icon: const Icon(
                          Icons.settings_outlined,
                        ),
                      )),
                ),
              ],
              bottom: TabBar(
                onTap: (index) => AutoRouter.of(context).pop(),
                dividerColor: Colors.transparent,
                indicatorColor: ColorConstants.green,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: ColorConstants.green,
                labelStyle: const TextStyle(fontSize: 20),
                tabs: const [
                  Tab(text: 'Войти'),
                  Tab(text: 'Регистрация'),
                ],
              ),
            ),
          ],
          body: Container(
            color: getThemeModeColor.brightnessColor(
              context,
              lightColor: ColorConstants.white,
              darkColor: ColorConstants.darkbgcolor,
            ),
            child: const TabBarView(
              children: [
                SignInView(),
                SignUpView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
