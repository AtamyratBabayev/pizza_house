import 'package:flutter/material.dart';

import 'app_tab_bar_props.dart';

const _paddingHorizontal = 24.0;

class AppTabBar extends StatelessWidget {
  const AppTabBar({required this.props, super.key});

  final AppTabBarProps props;

  @override
  Widget build(BuildContext context) {
    return TabBar(
        padding: const EdgeInsets.symmetric(horizontal: _paddingHorizontal),
        isScrollable: true,
        controller: props.controller,
        tabs: props.tabs
            .map(
              (tabItem) => Tab(text: tabItem.title),
            )
            .toList());
  }
}
