import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/app_theme.dart';
import 'package:lalafolike/core/theme/theme_notifier.dart';
import 'package:lalafolike/features/data/notification_api.dart';
import 'package:lalafolike/initial_main.dart';
import 'package:lalafolike/router/router.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

final AppRouter appRouter = AppRouter();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseApi firebaseApi = FirebaseApi(appRouter);
  await firebaseApi.initNotifications();

  FirebaseMessaging.onMessage.listen((message) {
    print("Foreground message: ${message.notification?.title}");
    print("Foreground message: ${message.notification?.body}");
  });
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
            title: 'Lalafolike',
            debugShowCheckedModeBanner: false,
            theme: AppThemeManager.lightTheme,
            darkTheme: AppThemeManager.darkTheme,
            themeMode: themeNotifier.themeMode == ThemeMode.system
                ? null
                : themeNotifier.themeMode,
            routerConfig: appRouter.config(),
          );
        },
      ),
    );
  }
}
