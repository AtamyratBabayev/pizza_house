import 'package:flutter/material.dart';

import '../app_colors.dart';

class AppLightColorScheme {
  AppLightColorScheme._();

  static ColorScheme get data {
    return const ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.orange,
        onPrimary: Colors.white,
        primaryContainer: AppColors.orangeLight,
        secondary: AppColors.orange,
        onSecondary: Colors.white,
        error: AppColors.red,
        onError: Colors.white,
        errorContainer: AppColors.redDark,
        onErrorContainer: Colors.white,
        surface: Colors.white,
        onSurface: Colors.black,
        onSurfaceVariant: AppColors.silver);
  }
}
