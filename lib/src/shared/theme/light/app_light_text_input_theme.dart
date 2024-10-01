import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_text_theme.dart';

const _borderRadius = 20.0;
const _contentPaddingHorizontal = 25.0;
const _contentPaddingVertical = 30.0;

class AppLightTextInputTheme {
  const AppLightTextInputTheme._();

  static final InputDecorationTheme data = InputDecorationTheme(
    filled: true,
    fillColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.error)) {
        return AppColors.redDark.withOpacity(0.3);
      }
      return AppColors.greyLight;
    }),
    contentPadding: const EdgeInsets.symmetric(
        horizontal: _contentPaddingHorizontal,
        vertical: _contentPaddingVertical),
    counterStyle: const TextStyle(height: 0.0, fontSize: 0.0),
    errorStyle: const TextStyle(fontSize: 0.0),
    hintStyle:
        AppTextTheme.data.titleSmall?.copyWith(color: AppColors.greyDark),
    labelStyle:
        AppTextTheme.data.titleSmall?.copyWith(color: AppColors.greyDark),
    floatingLabelStyle:
        AppTextTheme.data.titleSmall?.copyWith(color: AppColors.greyDark),
    prefixIconColor: AppColors.greyDark,
    suffixIconColor: AppColors.greyDark,
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(_borderRadius),
        borderSide: BorderSide.none),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(_borderRadius),
        borderSide: BorderSide.none),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(_borderRadius),
        borderSide: BorderSide.none),
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(_borderRadius),
        borderSide: BorderSide.none),
    disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(_borderRadius),
        borderSide: BorderSide.none),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(_borderRadius),
        borderSide: BorderSide.none),
  );
}
