import 'package:flutter/material.dart';
import './map/weisen_demo_localizations.dart';

class I18nDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Locale locale = Localizations.localeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('I18nDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('${locale.languageCode}'),
            Text(locale.toString()),
            Text(
              // Localizations.of(context, WeisenDemoLocalizations).title,
              WeisenDemoLocalizations.of(context).title,
              style: Theme.of(context).textTheme.title,
            ),
          ],
        ),
      ),
    );
  }
}
