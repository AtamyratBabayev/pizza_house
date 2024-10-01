import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../../generated/assets.gen.dart';
import '../../../generated/l10n.dart';
import 'app_language.dart';

class AppLoc {
  static const List<LocalizationsDelegate> appDelegates = [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate
  ];

  static List<Locale> get supportedLocales =>
      supportedLanguages.map((e) => e.locale).toList();

  static final List<AppLanguage> supportedLanguages = <AppLanguage>[
    AppLanguage(
        name: 'English', locale: const Locale('en'), flag: Assets.icons.flagUk)
  ];
}
