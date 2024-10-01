import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_text_theme.dart';

const _sizeIcon = 22.0;

class AppLightTopBarTheme {
  AppLightTopBarTheme._();

  static AppBarTheme get data => AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: AppColors.purpleDark,
        scrolledUnderElevation: 0.0,
        centerTitle: true,
        iconTheme:
            const IconThemeData(color: AppColors.purpleDark, size: _sizeIcon),
        titleTextStyle: AppTextTheme.data.headlineSmall?.copyWith(
            color: AppColors.purpleDark, fontWeight: FontWeight.w500),
        elevation: 0.0,
      );
}
