import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_transition_program/business/login/login_page/action.dart';
import 'package:flutter_transition_program/business/login/login_page/state.dart';

Effect<loginState> buildEffect() {
  return combineEffects(<Object, Effect<loginState>>{
    loginAction.action: _onAction,
  });
}

void _onAction(Action action, Context<loginState> ctx) {
}
