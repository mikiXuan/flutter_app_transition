import 'package:fish_redux/fish_redux.dart';
import '../business/login/login_page/page.dart';
import '../business/login/city_selected/page.dart';
import '../business/navigationHome/page.dart';

class RouteList
{
    Map reduxRoutes = <String, Page<Object, dynamic>>{
      'navigation_home': NavigationHomePage(),
      'todo_edit': city_selectedPage(),
      'login_page': loginPage(),
  };
}