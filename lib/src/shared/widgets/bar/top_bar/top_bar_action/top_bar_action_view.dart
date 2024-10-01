import 'package:flutter/material.dart';

import '../../../../../../generated/assets.gen.dart';
import '../../../../theme/app_colors.dart';
import '../../../spacer/spacer.dart';
import 'top_bar_action.dart';

const _sizeIcon = 24.0;
const _paddingIconBottom = 5.0;

class TopBarAction extends StatelessWidget {
  const TopBarAction({required this.props, super.key});

  final TopBarActionProps props;

  Widget _buildButtonContent(
      {required BuildContext context,
      required SvgGenImage icon,
      Color? iconColor,
      String? title}) {
    final theme = Theme.of(context);

    final coloredIcon = icon.svg(
      height: _sizeIcon,
      width: _sizeIcon,
      colorFilter: ColorFilter.mode(
          iconColor ??
              theme.appBarTheme.iconTheme?.color ??
              AppColors.purpleDark,
          BlendMode.srcIn),
    );

    if (title == null) {
      return coloredIcon;
    }

    return Column(
      children: [
        coloredIcon,
        const HeightSpacer(_paddingIconBottom),
        Text(
          title,
          style: theme.textTheme.labelSmall
              ?.copyWith(color: theme.appBarTheme.foregroundColor),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: props.onPressed,
      icon: Builder(
        builder: (context) => _buildButtonContent(
            context: context,
            icon: props.icon,
            iconColor: props.iconColor,
            title: props.title),
      ),
    );
  }
}
