import 'package:flutter/material.dart';
import 'package:like_lalafo/constants/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppManager {
  AppManager._();
  static AppManager instance = AppManager._();

  Future<SharedPreferences> preferences() async {
    return await SharedPreferences.getInstance();
  }

  Future<void> setThemeMode({required ThemeMode themeMode}) async {
    final prefs = await preferences();
    await prefs.setInt(AppConstants.instance.themeMode, themeMode.index);
  }

  Future<ThemeMode?> getThemeMode() async {
    final prefs = await preferences();
    int? themeModeIndex = prefs.getInt(AppConstants.instance.themeMode);
    if (themeModeIndex != null) {
      return ThemeMode.values[themeModeIndex];
    }
    return null;
  }
}
