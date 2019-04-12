import 'package:flutter/material.dart';
//import './config/routers/application.dart';
//import './config/routers/routers.dart';
//import 'package:fluro/fluro.dart';
import './config/routes.dart';
import 'package:flutter/services.dart';
import 'package:fish_redux/fish_redux.dart';

void main() => runApp(TransitionApp());

class TransitionApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TranssitionAppState();
  }
}
class _TranssitionAppState extends State<TransitionApp>
{
  final AbstractRoutes routes = HybridRoutes(routes: <AbstractRoutes>[
    PageRoutes(
      pages: RouteList().ReduxRoutes,
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<Object>(builder: (BuildContext context) {
          return routes.buildPage(settings.name, settings.arguments);
        });
      },
      home: routes.buildPage('navigation_home', null),
//      onGenerateRoute: Application.router.generator,
//      home: AppHomeTabBarPage(),
    );
//    print("initial route = ${app.initialRoute}");
//    return app;
  }
}

