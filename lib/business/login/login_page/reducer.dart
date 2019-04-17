import 'package:fish_redux/fish_redux.dart';

import 'package:flutter_transition_program/business/login/login_page/action.dart';
import 'package:flutter_transition_program/business/login/login_page/state.dart';

Reducer<loginState> buildReducer() {
  return asReducer(
    <Object, Reducer<loginState>>{
      loginAction.action: _onAction,
      loginAction.initCityName : _initCityNameReducer,
    },
  );
}

loginState _onAction(loginState state, Action action) {
  final loginState newState = state.clone();
  return newState;
}

loginState _initCityNameReducer(loginState state,Action action) {
  final String cityName = action.payload ?? '';
  final loginState newState = state.clone();
  newState.cityName = cityName;
  return newState;
}