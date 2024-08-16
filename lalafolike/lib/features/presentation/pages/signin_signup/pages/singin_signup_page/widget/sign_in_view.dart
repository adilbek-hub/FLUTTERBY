import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/basic_widgets/def_elevated_button.dart';
import 'package:lalafolike/features/presentation/enams/assets_constants.dart';
import 'package:lalafolike/features/presentation/pages/signin_signup/pages/singin_signup_page/widget/sign_in_platform.dart';
import 'package:lalafolike/features/presentation/pages/signin_signup/pages/singin_signup_page/widget/signin_signup_text_field.dart';

class SignInView extends StatelessWidget {
  const SignInView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SignInPlatform(image: AssetConstants.facebook.png),
              SignInPlatform(image: AssetConstants.google.webp),
              SignInPlatform(image: AssetConstants.vk.png),
              SignInPlatform(image: AssetConstants.ok.png),
            ],
          ),
          const SizedBox(height: 70),
          const SignInSignUpTextField(
            prefixIcon: Icon(Icons.person, color: ColorConstants.grey),
            hintText: 'Email или номер телефона',
            iconColor: ColorConstants.grey,
            textColor: ColorConstants.grey,
          ),
          const SizedBox(height: 35),
          const SignInSignUpTextField(
            prefixIcon: Icon(Icons.lock),
            hintText: 'Пароль',
            iconColor: ColorConstants.grey,
            textColor: ColorConstants.grey,
            suffixIcon: Icon(Icons.remove_red_eye),
          ),
          const SizedBox(height: 35),
          DefElevatedButton(
            height: 42,
            title: 'Войти',
            textType: TextType.body,
            textColor: Colors.white,
            backgroundColor: ColorConstants.green,
            onPressed: () {},
          ),
          const Spacer(),
          const AppText(title: 'Забыли пароль?', textType: TextType.body),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
