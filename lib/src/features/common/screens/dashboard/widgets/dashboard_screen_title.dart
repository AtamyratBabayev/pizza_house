import 'package:flutter/material.dart';
import 'package:localized_rich_text/localized_rich_text.dart';

import '../../../../../shared/shared.dart';

// TODO: Update with real user name
const userName = 'Kante';

const _paddingHorizontal = 24.0;

class DashboardScreenTitle extends StatelessWidget {
  const DashboardScreenTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = context.loc;
    final textStyle = theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onSurface,
        fontWeight: FontWeight.w500,
        height: 1.43);
    final greetingFirst = loc.dashboardGrettingFirst(userName);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: _paddingHorizontal),
      child: LocalizedRichText(
        text: loc.dashboardGreettingSecond,
        defaultTextStyle: textStyle,
        keys: [
          LocalizedRichTextKey(
            key: '#name',
            value: greetingFirst,
            textStyle: textStyle.copyWith(fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
