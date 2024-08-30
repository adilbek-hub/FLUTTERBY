import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
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
    textTheme: GoogleFonts.ubuntuTextTheme(
      const TextTheme(
        displayLarge: TextStyle(
          color: ColorConstants.lightTextColor,
          fontSize: 12,
        ),
        displayMedium: TextStyle(
          color: Colors.black,
        ),
        displaySmall: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    iconTheme: const IconThemeData(color: ColorConstants.lightTextColor),
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.green,
      unselectedLabelColor: ColorConstants.lightTextColor,
        indicatorColor: Colors.green,
           dividerColor: Colors.grey,
              labelStyle: TextStyle(fontSize: 15),
    ),
    colorScheme: ColorScheme.light(
        primary: ColorConstants.primary,
        onPrimary: ColorConstants.white,
        secondaryContainer: ColorConstants.primary.withOpacity(0.6),
        brightness: Brightness.light,
        surface: const Color.fromARGB(255, 215, 227, 237),
        onSurface: const Color.fromARGB(255, 245, 250, 255),
        primaryContainer: Colors.green),
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
      backgroundColor: const Color.fromARGB(255, 239, 248, 255),
      indicatorColor: Colors.transparent,
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const TextStyle(
            fontSize: 12,
            color: Colors.green,
          );
        }
        return const TextStyle(
          fontSize: 12,
          color: ColorConstants.lightTextColor,
        );
      }),
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const IconThemeData(
            color: Colors.green,
          );
        }
        return const IconThemeData(
          color: Colors.grey,
        );
      }),
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
