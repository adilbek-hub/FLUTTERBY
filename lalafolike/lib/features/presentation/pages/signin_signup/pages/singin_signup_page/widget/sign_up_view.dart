import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/features/presentation/pages/signin_signup/pages/singin_signup_page/service/auth_service.dart/create_user_with_email_password.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/basic_widgets/def_elevated_button.dart';
import 'package:lalafolike/features/presentation/enams/assets_constants.dart';
import 'package:lalafolike/features/presentation/pages/signin_signup/pages/singin_signup_page/widget/privacy_policy_text.dart';
import 'package:lalafolike/features/presentation/pages/signin_signup/pages/singin_signup_page/widget/sign_in_platform.dart';
import 'package:lalafolike/features/presentation/pages/signin_signup/pages/singin_signup_page/widget/signin_signup_text_field.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
          SignInSignUpTextField(
            controller: emailController,
            prefixIcon: const Icon(Icons.phone, color: ColorConstants.grey),
            hintText: 'Номер телефона',
            iconColor: ColorConstants.grey,
            textColor: ColorConstants.grey,
          ),
          const SizedBox(height: 35),
          SignInSignUpTextField(
            controller: passwordController,
            prefixIcon: const Icon(Icons.lock),
            hintText: 'Пароль',
            iconColor: ColorConstants.grey,
            textColor: ColorConstants.grey,
            suffixIcon: const Icon(Icons.remove_red_eye),
          ),
          const SizedBox(height: 35),
          const TermsAndConditionsText(),
          const SizedBox(height: 35),
          DefElevatedButton(
            height: 42,
            title: 'Регистрация',
            textType: TextType.body,
            textColor: Colors.white,
            backgroundColor: ColorConstants.green,
            onPressed: () {
              AuthService(context: context).createUserWithEmailAndPassword(
                  emailController.text, passwordController.text);
            },
          ),
          const Spacer(),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
