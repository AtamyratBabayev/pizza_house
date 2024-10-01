import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_text_theme.dart';

const _paddingRightIndicator = 10.0;
const _borderWidthIndicator = 2.0;

class AppLightTabBarTheme {
  AppLightTabBarTheme._();

  static TabBarTheme get data {
    final textTheme = AppTextTheme.data;
    return TabBarTheme(
        tabAlignment: TabAlignment.start,
        labelStyle: textTheme.headlineSmall?.copyWith(
            color: AppColors.purpleDark, fontWeight: FontWeight.w500),
        unselectedLabelStyle: textTheme.titleMedium
            ?.copyWith(color: AppColors.silver, fontWeight: FontWeight.w500),
        indicatorSize: TabBarIndicatorSize.label,
        indicator: const UnderlineTabIndicator(
          borderSide:
              BorderSide(width: _borderWidthIndicator, color: AppColors.orange),
          insets: EdgeInsets.only(right: _paddingRightIndicator),
        ),
        dividerHeight: 0.0);
  }
}
