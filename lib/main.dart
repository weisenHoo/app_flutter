import 'package:flutter/material.dart';

// 上
import './demo/listview_demo.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
import './demo/sliver_demo.dart';
import './demo/navigator_demo.dart';
// 中
import './demo/form_demo.dart';
import './demo/material_components.dart';
import './demo/state/state_management_demo.dart';
// 下
import './demo/stream/stream_demo.dart';
import './demo/rxdart/rxdart_demo.dart';
import './demo/bloc/bloc_demo.dart';
import './demo/http/http_demo.dart';
import './demo/animation/animation_demo.dart';
import './demo/i18n/i18n_demo.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import './demo/i18n/map/weisen_demo_localizations.dart';
import './demo/i18n/intl/weisen_demo_localizations.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      locale: Locale('en', 'US'),
      // locale: Locale('zh', 'CN'),
      // localeResolutionCallback:
      //     (Locale locale, Iterable<Locale> supportedLocales) {
      //   return Locale('en', 'US');
      // },
      localizationsDelegates: [
        WeisenDemoLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', 'US'),
        Locale('zh', 'CN'),
      ],

      debugShowCheckedModeBanner: false,
      // home: NavigatorDemo(),
      initialRoute: '/i18n', //初始路由
      routes: {
        '/': (context) => Home(),
        '/about': (context) => Page(title: 'About'),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialComponents(),
        '/state-management': (context) => StateManagementDemo(),
        '/stream': (context) => StreamDemo(),
        '/rxdart': (context) => RxDartDemo(),
        '/bloc': (context) => BlocDemo(),
        '/http': (context) => HttpDemo(),
        '/animation': (context) => AnimationDemo(),
        '/i18n': (context) => I18nDemo(),
      },
      //设置主题颜色
      theme: ThemeData(
        primarySwatch: Colors.red,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
        accentColor: Colors.blue[600],
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'Navigration',
          //   onPressed: () => debugPrint('Navigration button is pressed.'),
          // ), // 默认打开抽屉
          title: Text('FLUTTER'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Navigration',
              onPressed: () => debugPrint('Search button is pressed.'),
            ),
          ],
          //设置阴影
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.view_quilt)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            SliveDemo(),
          ],
        ),
        // 抽屉（默认在左边），右边：endDrawer
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
