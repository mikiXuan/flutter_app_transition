import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'package:flutter_transition_program/business/login/login_page/action.dart';
import 'package:flutter_transition_program/business/login/login_page/state.dart';

Widget buildView(loginState state, Dispatch dispatch, ViewService viewService) {
  return new Scaffold(
    appBar: new AppBar(
      title: new Text('login'),
    ),
    body: new Center(
//      child: Column(
//        children: <Widget>[
//          Center(
              child: FlatButton(
                // 文本内容
                  child: Text(state.cityName, semanticsLabel: 'FLAT BUTTON 1'),
                  onPressed: (){

                  }
              )
//          ),
//        ],
//      ),
    ),
  );
}
