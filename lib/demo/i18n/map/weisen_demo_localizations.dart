import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;

class WeisenDemoLocalizations {
  Locale locale;

  WeisenDemoLocalizations(this.locale);

  static WeisenDemoLocalizations of(BuildContext context) {
    return Localizations.of<WeisenDemoLocalizations>(
      context,
      WeisenDemoLocalizations,
    );
  }

  static Map<String, Map<String, String>> _localized = {
    'en': {
      'title': 'hello',
    },
    'zh': {
      'title': '你好',
    },
  };

  String get title {
    return _localized[locale.languageCode]['title'];
  }
}

class WeisenDemoLocalizationsDelegate
    extends LocalizationsDelegate<WeisenDemoLocalizations> {
  WeisenDemoLocalizationsDelegate();

  @override
  Future<WeisenDemoLocalizations> load(Locale locale) {
    return SynchronousFuture<WeisenDemoLocalizations>(
      WeisenDemoLocalizations(locale),
    );
  }

  @override
  bool isSupported(Locale locale) {
    return true;
  }

  @override
  bool shouldReload(LocalizationsDelegate<WeisenDemoLocalizations> old) {
    return false;
  }
}
