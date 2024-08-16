// lib/core/theme/theme_notifier.dart
import 'package:flutter/material.dart';
import 'package:ytp/core/app_manages.dart';

class ThemeNotifier with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  ThemeNotifier() {
    _loadThemeMode();
  }

  void setTheme(ThemeMode themeMode) {
    _themeMode = themeMode;
    AppManager.instance.setThemeMode(themeMode: themeMode);
    notifyListeners();
  }

  void _loadThemeMode() async {
    ThemeMode? themeMode = await AppManager.instance.getThemeMode();
    if (themeMode != null) {
      _themeMode = themeMode;
      notifyListeners();
    }
  }
}
