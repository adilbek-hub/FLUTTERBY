import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lalafolike/core/theme/color_constants.dart';

class AppThemeManager {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xffeef7ff),
    appBarTheme: const AppBarTheme(
      centerTitle: false,
      backgroundColor: Color(0xffeef7ff),
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    cardColor: ColorConstants.white,
    cardTheme: const CardTheme(
        surfaceTintColor: ColorConstants.white, color: ColorConstants.white),
    colorScheme: ColorScheme.light(
        primary: ColorConstants.primary,
        onPrimary: ColorConstants.white,
        secondaryContainer: ColorConstants.primary.withOpacity(0.6),
        brightness: Brightness.light,
        surface: ColorConstants.lightConatinerColor),
    expansionTileTheme: const ExpansionTileThemeData(
        textColor: ColorConstants.black,
        shape: RoundedRectangleBorder(side: BorderSide.none)),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      side: const BorderSide(color: ColorConstants.primary),
    )),
    radioTheme: const RadioThemeData(),
    checkboxTheme: CheckboxThemeData(
      checkColor: WidgetStateProperty.all(ColorConstants.primary),
      fillColor: WidgetStateProperty.all(ColorConstants.lightGrey),
    ),
    navigationBarTheme: NavigationBarThemeData(
      labelTextStyle: WidgetStateProperty.all(
        const TextStyle(
          fontSize: 14,
          color: ColorConstants.grey,
        ),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: ColorConstants.darkbgcolor,
    appBarTheme: const AppBarTheme(
      centerTitle: false,
      backgroundColor: ColorConstants.darkbgcolor,
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
    textTheme: const TextTheme(
        titleSmall: TextStyle(fontSize: 90), bodyLarge: TextStyle()),
    cardColor: const Color.fromARGB(255, 18, 18, 18),
    cardTheme: const CardTheme(
        surfaceTintColor: Color.fromARGB(255, 18, 18, 18),
        color: Color.fromARGB(255, 18, 18, 18)),
    colorScheme: ColorScheme.dark(
        primary: ColorConstants.primary,
        onPrimary: ColorConstants.black,
        secondaryContainer: ColorConstants.primary.withOpacity(0.6),
        brightness: Brightness.dark,
        surface: ColorConstants.darkContainerColor),
    expansionTileTheme: const ExpansionTileThemeData(
        textColor: ColorConstants.white,
        shape: RoundedRectangleBorder(side: BorderSide.none)),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      side: const BorderSide(color: ColorConstants.primary),
    )),
    radioTheme: const RadioThemeData(),
    checkboxTheme: CheckboxThemeData(
      checkColor: WidgetStateProperty.all(ColorConstants.primary),
      fillColor: WidgetStateProperty.all(ColorConstants.darkGrey),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 5, backgroundColor: ColorConstants.black),
    navigationBarTheme: NavigationBarThemeData(
      labelTextStyle: WidgetStateProperty.all(
        const TextStyle(
          fontSize: 14,
          color: ColorConstants.lightGrey,
        ),
      ),
    ),
  );
}
