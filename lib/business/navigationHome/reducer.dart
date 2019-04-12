import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<NavigationHomeState> buildReducer() {
  return asReducer(
    <Object, Reducer<NavigationHomeState>>{
      NavigationHomeAction.action: _onAction,
    },
  );
}

NavigationHomeState _onAction(NavigationHomeState state, Action action) {
  final NavigationHomeState newState = state.clone();
  return newState;
}
