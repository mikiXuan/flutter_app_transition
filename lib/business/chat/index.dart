
import 'package:flutter/material.dart';
import 'package:flutter_transition_program/config/routers/widget.dart';
import './chatSubview/chatSubview.dart' as chatSubview;


List<WidgetPoint> widgetPoints = [
  WidgetPoint(
    name: 'ScrollView',
    routerName: chatSubview.ChatSubPage.routeName,
    buildRouter: (BuildContext context) => chatSubview.ChatSubPage(),
  ),
];