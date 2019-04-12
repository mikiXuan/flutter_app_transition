import 'package:fish_redux/fish_redux.dart';

class loginState implements Cloneable<loginState> {
  String cityName;
  String cityAreaCode;
  Map cityMap;

  @override
  loginState clone() {
    return loginState()
      ..cityAreaCode = cityAreaCode
      ..cityMap = cityMap
      ..cityName = cityName;
  }
}

loginState initState(Map<String, dynamic> args) {
  final loginState state = loginState();
  state.cityName = '请选择区域';
  return state;
}
