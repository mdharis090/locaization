
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChangeControlLanguage with ChangeNotifier {
  Locale? _appLocale;
  Locale? get appLocale => _appLocale;

  ChangeControlLanguage({Locale? initialLocale}) {
    _appLocale = initialLocale ?? const Locale('en');
  }

  Future<void> changeLanguage(Locale locale) async {
    _appLocale = locale;
    SharedPreferences sp = await SharedPreferences.getInstance();
    await sp.setString('Language_code', locale.languageCode);
    notifyListeners();
  }
}