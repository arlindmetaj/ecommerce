import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dart_localization.dart';

String? getTranslated(BuildContext context, String key) {
  return DemoLocalization.of(context)!.getTranslatedValue(key);
}

// language code
const String english = "en";
const String german = "de";
const String france = "fr";

// language code
const String LANGUAGE_CODE = "languageCode";

Future<Locale> setLocale(String languageCode) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  await _prefs.setString(LANGUAGE_CODE, languageCode);
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  String languageCode = _prefs.getString(LANGUAGE_CODE) ?? english;
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  switch (languageCode) {
    case english:
      return const Locale(english, "US");
    case france:
      return const Locale(france, "FR");
    case german:
      return const Locale(german, "DE");
    default:
      return const Locale(english, "US");
  }
}
