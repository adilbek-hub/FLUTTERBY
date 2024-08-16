import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/pages/signin_signup/pages/setting_page/pages/theme_mode_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

mixin ThemeModePageMixin on State<ThemeModePage> {
  int selectedValue = 3;

  @override
  void initState() {
    super.initState();
    _loadSelectedValue();
  }

  void _loadSelectedValue() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      selectedValue = prefs.getInt('selectedValue') ?? 3;
    });
  }

  void saveSelectedValue(int value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('selectedValue', value);
  }
}
