import 'package:flutter/material.dart';
import 'package:ytp/constants/app_text_style.dart';
import 'package:ytp/core/theme/color_constants.dart';

class AppThemeManager {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: ColorConstants.primaryAccent,
      scaffoldBackgroundColor: ColorConstants.background1,
      textTheme: TextTheme(
        bodyLarge: TextStyles.whiteHeader,
        bodyMedium: TextStyles.whiteBody,
        titleMedium: TextStyles.body2,
        titleSmall: TextStyles.body3,
        bodySmall: TextStyles.body3white,
        labelLarge: TextStyles.body5,
        labelSmall: TextStyles.body4,
        labelMedium: TextStyles.body,
        displayLarge: TextStyles.body3grey,
        displayMedium: TextStyles.body1black,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: ColorConstants.primaryAccent,
        titleTextStyle:
            TextStyles.whiteHeader.copyWith(color: ColorConstants.primaryText),
        iconTheme: const IconThemeData(color: ColorConstants.quaternaryIcon),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: ColorConstants.secondaryAccent,
        textTheme: ButtonTextTheme.primary,
      ),
      colorScheme: const ColorScheme.light(
        primary: ColorConstants.primaryAccent,
        primaryContainer: ColorConstants.background2,
        onPrimary: ColorConstants.background1,
        secondary: ColorConstants.background1,
        onSecondary: ColorConstants.background1,
        surface: ColorConstants.background1,
        onSurface: ColorConstants.secondaryText,
        tertiary: ColorConstants.tertiaryAccent,
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: ColorConstants.background1,
      ),
      navigationBarTheme: NavigationBarThemeData(
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return const IconThemeData(color: Colors.red);
          }
          return const IconThemeData(color: Colors.grey);
        }),
        labelTextStyle: WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return TextStyles.body5black;
            }
            return TextStyles.body5Grey;
          },
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: ColorConstants.tertiaryAccent,
      scaffoldBackgroundColor: ColorConstants.background2,
      textTheme: TextTheme(
        displayLarge: TextStyles.whiteHeader
            .copyWith(color: ColorConstants.secondaryText),
        bodyLarge: TextStyles.body.copyWith(color: ColorConstants.primaryText),
        bodyMedium:
            TextStyles.whiteBody.copyWith(color: ColorConstants.quaternaryText),
        titleMedium:
            TextStyles.body2.copyWith(color: ColorConstants.primaryText),
        titleSmall:
            TextStyles.body3.copyWith(color: ColorConstants.quaternaryText),
        bodySmall: TextStyles.body4.copyWith(color: ColorConstants.lastText),
        labelLarge:
            TextStyles.body5.copyWith(color: ColorConstants.primaryText),
        labelSmall: TextStyles.body6.copyWith(color: ColorConstants.lastText),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: ColorConstants.tertiaryAccent,
        titleTextStyle:
            TextStyles.whiteHeader.copyWith(color: ColorConstants.primaryText),
        iconTheme: const IconThemeData(color: ColorConstants.primaryIcon),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: ColorConstants.greenLayers,
        textTheme: ButtonTextTheme.primary,
      ),
      colorScheme: const ColorScheme.dark(
        primary: ColorConstants.tertiaryAccent,
        onPrimary: ColorConstants.background2,
        secondary: ColorConstants.primaryAccent,
        onSecondary: ColorConstants.background2,
        surface: ColorConstants.background2,
        onSurface: ColorConstants.primaryText,
      ).copyWith(surface: ColorConstants.background2),
    );
  }
}
