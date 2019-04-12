import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum city_selectedAction { action }

class city_selectedActionCreator {
  static Action onAction() {
    return const Action(city_selectedAction.action);
  }
}
