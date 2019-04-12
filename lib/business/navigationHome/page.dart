import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class NavigationHomePage extends Page<NavigationHomeState, Map<String, dynamic>> {
  NavigationHomePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<NavigationHomeState>(
                adapter: null,
                slots: <String, Dependent<NavigationHomeState>>{
                }),
            middleware: <Middleware<NavigationHomeState>>[
            ],);

}
