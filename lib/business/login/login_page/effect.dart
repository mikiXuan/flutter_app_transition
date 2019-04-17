import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_transition_program/business/login/login_page/action.dart';
import 'package:flutter_transition_program/business/login/login_page/state.dart';

Effect<loginState> buildEffect() {
  return combineEffects(<Object, Effect<loginState>>{
    loginAction.action: _onAction,
    Lifecycle.initState:_init,
  });
}

void _onAction(Action action, Context<loginState> ctx) {
}

void _init(Action action,Context<loginState> ctx)
{
  final String cityName = '请选择区域';
  ctx.dispatch(loginActionCreator.initCityNameStr(cityName));
}