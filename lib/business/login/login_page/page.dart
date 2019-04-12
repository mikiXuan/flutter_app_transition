import 'package:fish_redux/fish_redux.dart';

import 'package:flutter_transition_program/business/login/login_page/effect.dart';
import 'package:flutter_transition_program/business/login/login_page/reducer.dart';
import 'package:flutter_transition_program/business/login/login_page/state.dart';
import 'package:flutter_transition_program/business/login/login_page/view.dart';

class loginPage extends Page<loginState, Map<String, dynamic>> {



  loginPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<loginState>(
                adapter: null,
                slots: <String, Dependent<loginState>>{
                }),
            middleware: <Middleware<loginState>>[
            ],);



}
