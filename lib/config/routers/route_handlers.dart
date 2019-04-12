import 'package:flutter_transition_program/business/home.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_transition_program/business/chat/chatSubview/chatSubview.dart';



var rootHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new AppHomeTabBarPage();
    });

var chatSubViewHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new ChatSubPage();
    });

