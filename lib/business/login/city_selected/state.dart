import 'package:fish_redux/fish_redux.dart';

class city_selectedState implements Cloneable<city_selectedState> {

  @override
  city_selectedState clone() {
    return city_selectedState();
  }
}

city_selectedState initState(Map<String, dynamic> args) {
  return city_selectedState();
}
