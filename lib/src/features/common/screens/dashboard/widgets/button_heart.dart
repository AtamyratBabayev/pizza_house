import 'package:flutter/material.dart';

import '../../../../../../generated/assets.gen.dart';

const _sizeIcon = 16.0;

class ButtonHeart extends StatelessWidget {
  const ButtonHeart({super.key});

  void onPressed() {
    // TODO: Add implementation
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return IconButton(
      onPressed: onPressed,
      iconSize: _sizeIcon,
      icon: Assets.icons.heartOutlined.svg(
        colorFilter:
            ColorFilter.mode(theme.colorScheme.primary, BlendMode.srcIn),
      ),
    );
  }
}
