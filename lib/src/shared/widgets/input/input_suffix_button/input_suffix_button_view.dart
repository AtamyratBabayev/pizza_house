import 'package:flutter/material.dart';

import 'input_suffix_button_props.dart';

const _sizeIcon = 24.0;
const _paddingRight = 12.0;

class InputSuffixButton extends StatelessWidget {
  const InputSuffixButton({required this.props, super.key});

  final InputSuffixButtonProps props;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(right: _paddingRight),
      child: IconButton(
        iconSize: _sizeIcon,
        onPressed: props.onPressed,
        splashColor: Colors.transparent,
        icon: props.icon.svg(
          width: _sizeIcon,
          height: _sizeIcon,
          colorFilter: ColorFilter.mode(
            theme.inputDecorationTheme.suffixIconColor ?? Colors.transparent,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
