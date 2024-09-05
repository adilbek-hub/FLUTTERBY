import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';

class LoadingService {
  void showLoading(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return const AlertDialog(
          backgroundColor: Colors.green,
          title: AppText(
              textAlign: TextAlign.center,
              title: 'Данные загружаются',
              textType: TextType.body,
              color: Colors.white),
          content: CupertinoActivityIndicator(color: Colors.white),
        );
      },
    );
  }
}

final loadingService = LoadingService();
