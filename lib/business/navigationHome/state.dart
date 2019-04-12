import 'package:fish_redux/fish_redux.dart';

class NavigationHomeState implements Cloneable<NavigationHomeState> {

  @override
  NavigationHomeState clone() {
    return NavigationHomeState();
  }
}

NavigationHomeState initState(Map<String, dynamic> args) {
  return NavigationHomeState();
}
