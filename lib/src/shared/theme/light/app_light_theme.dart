import 'package:flutter/material.dart';

import '../../../../generated/fonts.gen.dart';
import '../app_colors.dart';
import '../app_text_theme.dart';
import 'app_light_action_icons_theme.dart';
import 'app_light_color_scheme.dart';
import 'app_light_tab_bar_theme.dart';
import 'app_light_text_input_theme.dart';
import 'app_light_top_bar_theme.dart';

class AppLightTheme {
  const AppLightTheme._();

  static ThemeData get data => ThemeData(
      scaffoldBackgroundColor: Colors.white,
      inputDecorationTheme: AppLightTextInputTheme.data,
      hintColor: AppColors.silver,
      colorScheme: AppLightColorScheme.data,
      useMaterial3: true,
      tabBarTheme: AppLightTabBarTheme.data,
      actionIconTheme: AppLightActionIconsTheme.data,
      appBarTheme: AppLightTopBarTheme.data,
      fontFamily: FontFamily.brandonGrotesque,
      shadowColor: AppColors.black,
      textTheme: AppTextTheme.data);
}
