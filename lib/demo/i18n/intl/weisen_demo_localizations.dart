import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'weisen_demo_messages_all.dart';

class WeisenDemoLocalizations {
  static WeisenDemoLocalizations of(BuildContext context) {
    return Localizations.of<WeisenDemoLocalizations>(
      context,
      WeisenDemoLocalizations,
    );
  }

  static Future<WeisenDemoLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();

    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return WeisenDemoLocalizations();
    });
  }

  String get title => Intl.message(
        'hello',
        name: 'title',
        desc: 'demo localizations.',
      );

  String greet(String name) => Intl.message(
        'hello $name',
        name: 'greet',
        desc: 'greet someone',
        args: [name],
      );
}

class WeisenDemoLocalizationsDelegate
    extends LocalizationsDelegate<WeisenDemoLocalizations> {
  WeisenDemoLocalizationsDelegate();

  @override
  Future<WeisenDemoLocalizations> load(Locale locale) {
    return WeisenDemoLocalizations.load(locale);
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
