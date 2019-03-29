import 'package:flutter/material.dart';
import './config/routers/application.dart';
import './config/routers/routers.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/services.dart';
import './business/home.dart';

void main() => runApp(TransitionApp());

class TransitionApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TranssitionAppState();
  }
}
class _TranssitionAppState extends State<TransitionApp>
{
   _TranssitionAppState(){
    final router = new Router();
    Routes.configureRoutes(router);
    Application.router=router;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Application.router.generator,
//      home: AppHomeTabBarPage(),
    );
//    print("initial route = ${app.initialRoute}");
//    return app;
  }
}

