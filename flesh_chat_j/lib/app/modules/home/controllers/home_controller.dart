import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flesh_chat_j/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_dialog.dart';
import '../services/home_services.dart';

class HomeController extends GetxController {
  final smsController = TextEditingController();
  Future<void> logout() async {
    AppDialog.showLoading();
    await HomeServices.logout();
    await Get.offAllNamed(Routes.FLASH_CHAT);
  }

  Future<void> delete() async {
    AppDialog.showLoading();
    await HomeServices.delete();
    await Get.offAllNamed(Routes.FLASH_CHAT);
  }

  Future<void> sendMessage() async {
    final sms = smsController.text.trim();
    smsController.text = '';
    print(sms);
    print(sms != '');
    if (sms != '') {
      await HomeServices.sendMessage(sms);
    }
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> streamMessages() {
    return HomeServices.streamMessage();
  }
}
