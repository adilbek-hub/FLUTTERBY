import 'package:flesh_chat_j/app/modules/login/services/login_service.dart';
import 'package:flesh_chat_j/app/routes/app_pages.dart';
import 'package:flesh_chat_j/services/user_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_dialog.dart';

class LoginController extends GetxController {
  final count = 0.obs;

  void increment() => count.value++;

  final email = TextEditingController();
  final password = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> loginRegister(bool isLogin) async {
    if (formKey.currentState!.validate() &&
        GetUtils.isEmail(email.text) &&
        GetUtils.isPassport(password.text)) {
      AppDialog.showLoading();
      final user = isLogin
          ? await LoginService.login(email.text, password.text)
          : await LoginService.register(email.text, password.text);
      Get.back();
      if (user != null) {
        await userManager.setUid(user.user!.uid);
        await Get.offAllNamed(Routes.HOME);
      } else {
        AppDialog.showAlert(
            isLogin ? 'Login je parol tuura emes' : 'Kata boldu', 'Error');
      }
    } else {
      AppDialog.showSnackbar('Formany tuura toltur');
    }
  }
}
