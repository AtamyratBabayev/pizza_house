import 'package:flutter/widgets.dart';

import '../../../generated/l10n.dart';

extension AppLocContext on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this);
}
