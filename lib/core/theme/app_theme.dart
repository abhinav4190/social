import 'package:flutter/material.dart';
import 'package:social/core/theme/app_palette.dart';

/// A class that defines the application's theme.
class AppTheme {
  static final lightThemeMode = ThemeData(
      fontFamily: 'Inter',
      scaffoldBackgroundColor: AppPalette.scaffoldBackground,
      appBarTheme:
          const AppBarTheme(backgroundColor: AppPalette.scaffoldBackground),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 26,
          color: AppPalette.blackColor,
          fontWeight: FontWeight.w700,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: AppPalette.greyColor.withOpacity(0.07),
        filled: true,
       
        hintStyle: const TextStyle(fontSize: 14, color: AppPalette.greyColor),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)),
      ));
}
