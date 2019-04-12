import 'package:fish_redux/fish_redux.dart';

import 'package:flutter_transition_program/business/login/login_page/action.dart';
import 'package:flutter_transition_program/business/login/login_page/state.dart';

Reducer<loginState> buildReducer() {
  return asReducer(
    <Object, Reducer<loginState>>{
      loginAction.action: _onAction,
    },
  );
}

loginState _onAction(loginState state, Action action) {
  final loginState newState = state.clone();
  return newState;
}
