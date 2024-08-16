import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AppDialog {
  static void showLoading() {
    Get.defaultDialog(content: const CupertinoActivityIndicator(radius: 20));
  }

  static Future<void> showAlert(String content, String title) async {
    await Get.defaultDialog(title: title, content: Text(content));
  }

  static Future<void> showSnackbar(String message) async {
    Get.showSnackbar(GetSnackBar(
      message: message,
    ));
  }
}
