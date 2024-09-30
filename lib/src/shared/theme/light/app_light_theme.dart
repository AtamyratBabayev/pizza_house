import 'package:flutter/material.dart';

import '../../../../generated/fonts.gen.dart';
import '../app_colors.dart';
import '../app_text_theme.dart';
import 'app_light_color_scheme.dart';

class AppLightTheme {
  const AppLightTheme._();

  static ThemeData get data => ThemeData(
      scaffoldBackgroundColor: Colors.white,
      hintColor: AppColors.greyDark,
      colorScheme: AppLightColorScheme.data,
      useMaterial3: true,
      fontFamily: FontFamily.fredoka,
      textTheme: AppTextTheme.data);
}
