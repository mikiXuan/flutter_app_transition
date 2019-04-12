import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum NavigationHomeAction { action }

class NavigationHomeActionCreator {
  static Action onAction() {
    return const Action(NavigationHomeAction.action);
  }
}
