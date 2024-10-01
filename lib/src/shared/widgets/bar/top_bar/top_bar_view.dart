import 'package:flutter/material.dart';

import '../../spacer/spacer.dart';
import 'auto_leading_icon_button.dart';
import 'top_bar_action/top_bar_action.dart';
import 'top_bar_props.dart';

const _paddingHorizontal = 7.0;

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({required this.props, super.key});

  final TopBarProps props;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    Widget? title;

    if (props.title != null) {
      title = Text(props.title!);
    }

    final actions = props.actions
        ?.map<Widget>((props) => TopBarAction(props: props))
        .toList();

    if (actions != null) {
      actions.add(const WidthSpacer(_paddingHorizontal));
    }

    return AppBar(
      title: title,
      actions: actions,
      leading: Transform.translate(
        offset: const Offset(_paddingHorizontal, 0.0),
        child: const AutoLeadingIconButton(),
      ),
    );
  }
}
