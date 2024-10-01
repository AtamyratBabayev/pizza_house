import 'package:flutter/material.dart';

import '../../../../../../../generated/assets.gen.dart';
import '../../../../../../shared/shared.dart';
import 'dashboard_search_filters_bar.dart';

const _paddingLeft = 24.0;
const _paddingRight = 20.0;
const _paddingRightInput = 10.0;
const _sizeIcon = 22.0;

class DashboardSearchFiltersBar extends StatelessWidget {
  const DashboardSearchFiltersBar({required this.props, super.key});

  final DashboardSearchFiltersBarProps props;

  @override
  Widget build(BuildContext context) {
    final loc = context.loc;
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: _paddingLeft, right: _paddingRight),
      child: Row(
        children: [
          Expanded(
            child: Input(
              props: InputProps(
                  hintText: loc.dashboardSearch,
                  prefixIcon: Assets.icons.search,
                  onChange: props.onSearchChanged),
            ),
          ),
          const WidthSpacer(_paddingRightInput),
          IconButton(
            onPressed: props.onFiltersPressed,
            iconSize: _sizeIcon,
            icon: Assets.icons.filters.svg(
              colorFilter: ColorFilter.mode(
                  theme.colorScheme.onSurface, BlendMode.srcIn),
            ),
          )
        ],
      ),
    );
  }
}
