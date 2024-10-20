import 'package:flutter/material.dart';

enum AppLocale { en, ar }

class LocalizationsNotifier extends ChangeNotifier {
  AppLocale _appLocale = AppLocale.en;

  AppLocale get appLocale => _appLocale;

  void setLocale(AppLocale locale) {
    _appLocale = locale;
    notifyListeners();
  }
}
