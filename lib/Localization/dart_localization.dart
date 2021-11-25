import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class DemoLocalization {
  late final Locale locale;

  DemoLocalization({required this.locale});

  static DemoLocalization? of(BuildContext context) {
    return Localizations.of<DemoLocalization>(context, DemoLocalization);
  }

  Map<String, String>? _localizedValues;

  Future load() async {
    String jsonStringValues =
        await rootBundle.loadString("lib/lang/${locale.languageCode}.json");

    Map<String, dynamic> mappedJson = jsonDecode(jsonStringValues);

    _localizedValues =
        mappedJson.map((key, value) => MapEntry(key, value.toString()));
  }

  String? getTranslatedValue(String key) {
    return _localizedValues![key];
  }

  // static member to have simple access to the delegate from Material App
  static LocalizationsDelegate<DemoLocalization> delegate =
      _DemoLocalizationDelegate();
}

class _DemoLocalizationDelegate
    extends LocalizationsDelegate<DemoLocalization> {
  @override
  bool isSupported(Locale locale) {
    return ["en", "fr", "de"].contains(locale.languageCode);
  }

  @override
  Future<DemoLocalization> load(Locale locale) async {
    DemoLocalization localization = DemoLocalization(locale: locale);
    await localization.load();
    return localization;
  }

  @override
  bool shouldReload(_DemoLocalizationDelegate old) => false;
}
