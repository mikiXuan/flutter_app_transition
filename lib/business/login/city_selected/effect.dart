import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<city_selectedState> buildEffect() {
  return combineEffects(<Object, Effect<city_selectedState>>{
    city_selectedAction.action: _onAction,
  });
}

void _onAction(Action action, Context<city_selectedState> ctx) {
}
