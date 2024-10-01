import 'package:flutter/material.dart';

import '../../../../../../generated/assets.gen.dart';

class TopBarActionProps {
  const TopBarActionProps(
      {required this.icon, this.title, this.onPressed, this.iconColor});

  final SvgGenImage icon;
  final Color? iconColor;
  final String? title;
  final VoidCallback? onPressed;
}
