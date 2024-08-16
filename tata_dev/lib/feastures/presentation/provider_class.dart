import 'package:flutter/material.dart';

class ProviderClass with ChangeNotifier {
  bool isTrue = false;

  void toping() {
    isTrue = !isTrue;
    notifyListeners();
  }
}
