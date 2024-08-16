import 'package:flesh_chat_j/app/components/animation_logo.dart';
import 'package:flesh_chat_j/app/components/custom_button.dart';
import 'package:flesh_chat_j/app/constants/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView(this.isLogin, {Key? key}) : super(key: key);
  final bool isLogin;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AnimationLogo(
            logoSize: 150,
          ),
          const SizedBox(height: 10),
          Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTextField(
                  controller: controller.email,
                ),
                SizedBox(height: 10),
                CustomTextField(
                  controller: controller.password,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          CustomButton(
            borderRadius: 30,
            text: isLogin ? 'Login' : 'Register',
            color: AppColors.whiteL,
            onPressed: () async => await controller.loginRegister(isLogin),
          ),
        ],
      )),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
  });
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
