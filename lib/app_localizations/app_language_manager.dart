import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppLanguageManager extends ChangeNotifier {
  Locale _appLocale = Language.english;

  Locale get appLocal => _appLocale ?? Language.english;

  void fetchLocale() async {
    var prefs = await SharedPreferences.getInstance();
    var languageCode = prefs.getString(Language.languageCode);
    var countryCode = prefs.getString(Language.countryCode);
    if (languageCode == null) {
      _appLocale = Language.english;
    } else {
      _appLocale = Locale(languageCode, countryCode);
    }
  }

  void changeLanguage(Locale locale) async {
    var prefs = await SharedPreferences.getInstance();
    if (_appLocale == locale) {
      return;
    }
    if (locale == Language.vietnamese) {
      _appLocale = Language.vietnamese;
    } else {
      _appLocale = Language.english;
    }
    await prefs.setString(Language.languageCode, _appLocale.languageCode);
    await prefs.setString(Language.countryCode, _appLocale.countryCode);
    notifyListeners();
  }
}

class Language {
  static const english = Locale('en', 'US');
  static const vietnamese = Locale('vi', 'VN');
  static const languageCode = 'language_code';
  static const countryCode = 'country_code';
}
