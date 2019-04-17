import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum loginAction { action , initCityName}

class loginActionCreator {
  static Action onAction() {
    return const Action(loginAction.action);
  }

  static Action initCityNameStr(String cityName) {
    return Action(loginAction.initCityName,payload: cityName);
  }
}
