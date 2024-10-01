import 'package:flutter/material.dart';

class DashboardSearchFiltersBarProps {
  const DashboardSearchFiltersBarProps(
      {this.onFiltersPressed, this.onSearchChanged});

  final void Function(String)? onSearchChanged;
  final VoidCallback? onFiltersPressed;
}
