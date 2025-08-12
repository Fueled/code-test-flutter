import 'package:flutter/material.dart';
import 'package:code_test_flutter/l10n/app_localizations.g.dart';

extension BuildContextNavigation on BuildContext {
  AppLocalizations get translations => AppLocalizations.of(this)!;
}
