import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class PriceFormatter {
  const PriceFormatter._();

  static String formatToDecimalPattern(
      {required BuildContext context, required double price}) {
    final hasFraction = price - price.truncate() > 0;
    NumberFormat formatter = NumberFormat.decimalPatternDigits(
      locale: Localizations.maybeLocaleOf(context)?.languageCode,
      decimalDigits: hasFraction ? 2 : 0,
    );
    return formatter.format(price);
  }
}
