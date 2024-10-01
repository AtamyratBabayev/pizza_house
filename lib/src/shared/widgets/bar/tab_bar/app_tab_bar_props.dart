import 'package:flutter/material.dart';

import 'tab_bar.dart';

class AppTabBarProps {
  const AppTabBarProps({this.controller, required this.tabs});

  final TabController? controller;
  final List<TabBarItem> tabs;
}
