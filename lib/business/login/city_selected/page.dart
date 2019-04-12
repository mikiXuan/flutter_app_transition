import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';


class city_selectedPage extends Page<city_selectedState, Map<String, dynamic>> {
  city_selectedPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<city_selectedState>(
                adapter: null,
                slots: <String, Dependent<city_selectedState>>{
                }),
            middleware: <Middleware<city_selectedState>>[
            ],);


}
