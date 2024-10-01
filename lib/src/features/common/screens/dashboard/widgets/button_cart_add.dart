import 'package:flutter/material.dart';

import '../../../../../../generated/assets.gen.dart';

const _paddingCircle = 6.0;
const _sizeWithPaddingIcon = 24.0;

class ButtonCardAdd extends StatelessWidget {
  const ButtonCardAdd({super.key});

  void onPressed() {
    // TODO: Add implementation
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return IconButton(
      hoverColor: theme.colorScheme.primaryContainer,
      onPressed: onPressed,
      iconSize: _sizeWithPaddingIcon,
      icon: DecoratedBox(
        decoration: BoxDecoration(
          color: theme.colorScheme.primaryContainer,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(_paddingCircle),
          child: Assets.icons.plus.svg(
            colorFilter:
                ColorFilter.mode(theme.colorScheme.primary, BlendMode.srcIn),
          ),
        ),
      ),
    );
  }
}
