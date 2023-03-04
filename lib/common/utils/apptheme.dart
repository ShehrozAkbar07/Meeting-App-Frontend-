
import 'package:flutter/material.dart';

import 'appcolors.dart';

class AppTheme {
  ///AppTheme
  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Color(AppColors.primary),
        onPrimary: Color(AppColors.accent),
        secondary: Color(AppColors.secondary),
        onSecondary: Color(AppColors.accent),
        error: Colors.red,
        onError: Colors.red,
        background: Colors.white,
        onBackground: Colors.white,
        surface: Colors.white,
        onSurface: Colors.white,
      ),
    );
  }
}
