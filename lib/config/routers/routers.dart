import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './route_handlers.dart';

class Routes {
  static String root = "/";

//  static String assignment = "/assignment";
//  static String account = "/account";
//  static String camera = "/camera";
  static String chatSubView = "/chatSubView";

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          print("ROUTE WAS NOT FOUND !!!");
        });
    router.define(root, handler: rootHandler);
    router.define(chatSubView, handler: chatSubViewHandler, transitionType: TransitionType.inFromLeft);
  }
}
