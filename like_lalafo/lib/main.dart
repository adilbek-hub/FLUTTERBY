import 'package:flutter/material.dart';
import 'package:like_lalafo/core/theme/app_theme.dart';
import 'package:like_lalafo/core/theme/theme_notifier.dart';
import 'package:like_lalafo/initial_main.dart';
import 'package:like_lalafo/router/router.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  Widget widget = await InitialMain.initialMain(const MyApp());
  runApp(widget);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, themeNotifier, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: AppThemeManager.lightTheme,
            darkTheme: AppThemeManager.darkTheme,
            themeMode: themeNotifier.themeMode,
            routerConfig: AppRouter().config(),
          );
        },
      ),
    );
  }
}
