import 'package:flutter/material.dart';

import '../../../../../generated/assets.gen.dart';
import '../app_colors.dart';

const _iconSize = 22.0;

class AppLightActionIconsTheme {
  AppLightActionIconsTheme._();

  static ActionIconThemeData get data => ActionIconThemeData(
        backButtonIconBuilder: (context) => Assets.icons.chevronLeft.svg(
          height: _iconSize,
          width: _iconSize,
          fit: BoxFit.scaleDown,
          colorFilter:
              const ColorFilter.mode(AppColors.purpleDark, BlendMode.srcIn),
        ),
        endDrawerButtonIconBuilder: (context) => Assets.icons.menu.svg(
          height: _iconSize,
          width: _iconSize,
          fit: BoxFit.scaleDown,
          colorFilter:
              const ColorFilter.mode(AppColors.purpleDark, BlendMode.srcIn),
        ),
        drawerButtonIconBuilder: (context) => Assets.icons.menu.svg(
          height: _iconSize,
          width: _iconSize,
          fit: BoxFit.scaleDown,
          colorFilter:
              const ColorFilter.mode(AppColors.purpleDark, BlendMode.srcIn),
        ),
      );
}
