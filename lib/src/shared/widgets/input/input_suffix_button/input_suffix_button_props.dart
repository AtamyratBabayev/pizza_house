import 'package:flutter/material.dart';

import '../../../../../../generated/assets.gen.dart';

class InputSuffixButtonProps {
  const InputSuffixButtonProps({required this.icon, required this.onPressed});

  final SvgGenImage icon;
  final VoidCallback? onPressed;
}
