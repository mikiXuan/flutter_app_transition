import 'package:fish_redux/fish_redux.dart';
import '../business/login/login_page/page.dart';
import '../business/login/city_selected/page.dart';

class RouteList
{
    Map fishReduxRoutes = <String, Page<Object, dynamic>>{
    'navigation_home': loginPage(),
    'todo_edit': city_selectedPage(),
  };
}