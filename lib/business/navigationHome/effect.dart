import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<NavigationHomeState> buildEffect() {
  return combineEffects(<Object, Effect<NavigationHomeState>>{
    NavigationHomeAction.action: _onAction,
  });
}

void _onAction(Action action, Context<NavigationHomeState> ctx) {
}
