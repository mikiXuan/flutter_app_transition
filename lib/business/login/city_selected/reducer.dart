import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<city_selectedState> buildReducer() {
  return asReducer(
    <Object, Reducer<city_selectedState>>{
      city_selectedAction.action: _onAction,
    },
  );
}

city_selectedState _onAction(city_selectedState state, Action action) {
  final city_selectedState newState = state.clone();
  return newState;
}
