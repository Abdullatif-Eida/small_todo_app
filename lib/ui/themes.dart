import 'package:flutter/material.dart';
import 'package:small_app/ui/colors/app_colors.dart';
import 'package:small_app/utils/const.dart';

final ThemeData _lightTheme = _buildLightTheme();
final ThemeData _darkTheme = _buildDarkTheme();

ThemeData _buildLightTheme() {
  final base = ThemeData.light(useMaterial3: false);

  return base.copyWith(
    primaryColor: AppColors.main,
    scaffoldBackgroundColor: AppColors.background,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.black,
        fontFamily: appFont,
      ),
      bodyMedium: TextStyle(
        fontFamily: appFont,
      ),
    ),
    appBarTheme: const AppBarTheme(
      color: AppColors.main,
      foregroundColor: AppColors.white,
    ),
    colorScheme: const ColorScheme.light().copyWith(secondary: AppColors.secondColor).copyWith(background: AppColors.background),
  );
}

ThemeData _buildDarkTheme() {
  final base = ThemeData.dark(useMaterial3: false);

  return base.copyWith(
    primaryColor: AppColors.main,
    scaffoldBackgroundColor: AppColors.background,
    hintColor: AppColors.hintColor,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.white,
        fontFamily: appFont,
      ),
      bodyMedium: TextStyle(
        fontFamily: appFont,
      ),
    ),
    appBarTheme: const AppBarTheme(
      color: AppColors.main,
      foregroundColor: AppColors.main,
    ),
    colorScheme: const ColorScheme.dark().copyWith(secondary: AppColors.secondColor).copyWith(background: AppColors.secondColor),
  );
}

class Themes {
  final ThemeData themeData;

  Themes({required this.themeData});

  factory Themes.lightTheme() {
    return Themes(themeData: _lightTheme);
  }

  factory Themes.darkTheme() {
    return Themes(themeData: _darkTheme);
  }
}
