import 'package:flutter/material.dart';

import '../../../generated/assets.gen.dart';

class AppLanguage {
  const AppLanguage(
      {required this.name, required this.locale, required this.flag});

  final String name;
  final Locale locale;
  final SvgGenImage flag;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is AppLanguage &&
        other.name == name &&
        other.locale == locale &&
        other.flag == flag;
  }

  @override
  int get hashCode => Object.hash(name, locale, flag);
}
