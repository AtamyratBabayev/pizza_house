import 'package:flutter/material.dart';

import 'input_prefix_icon_props.dart';

const _sizeIcon = 24.0;
const _paddingLeft = 20.0;
const _paddingRight = 14.0;

class InputPrefixIcon extends StatelessWidget {
  const InputPrefixIcon({required this.props, super.key});

  final InputPrefixIconProps props;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(left: _paddingLeft, right: _paddingRight),
      child: props.icon.svg(
        height: _sizeIcon,
        width: _sizeIcon,
        colorFilter: ColorFilter.mode(
            theme.inputDecorationTheme.prefixIconColor ??
                theme.colorScheme.onSurface,
            BlendMode.srcIn),
      ),
    );
  }
}
