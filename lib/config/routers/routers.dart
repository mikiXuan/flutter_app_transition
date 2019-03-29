import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './route_handlers.dart';
import '../../business/index.dart';

class Routes {
  static String root = "/";

//  static String assignment = "/assignment";
//  static String account = "/account";
//  static String camera = "/camera";
  static String chatSubView = "/chatSubView";

  static void configureRoutes(Router router) {
    List widgetDemosList = new WidgetDemoList().getDemos();
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          print("ROUTE WAS NOT FOUND !!!");
        });
    router.define(root, handler: rootHandler);

//    router.define(assignment, handler: assignmentHandler);
//    router.define(account, handler: accountHandler);
//    router.define(camera, handler: cameraHandler);
    router.define(chatSubView, handler: chatSubViewHandler, transitionType: TransitionType.inFromLeft);
    widgetDemosList.forEach((demo) {
      Handler handler = new Handler(
          handlerFunc: (BuildContext context, Map<String, List<String>> params) {
            return demo.buildRouter(context);
          });
      router.define('${demo.routerName}', handler: handler);
    });
  }
}
