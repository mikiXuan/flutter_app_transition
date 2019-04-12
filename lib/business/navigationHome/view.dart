import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_transition_program/business/chat/chat.dart';
import 'package:flutter_transition_program/business/assignment/assignment.dart';
import 'package:flutter_transition_program/business/camera/camera.dart';
import 'package:flutter_transition_program/business/account/account.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(NavigationHomeState state, Dispatch dispatch, ViewService viewService) {
  return AppHomeTabBarPage();
}


class AppHomeTabBarPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _AppHomeTabBarPageState();
  }
}

class _AppHomeTabBarPageState extends State<AppHomeTabBarPage>
{
  int _currentIndex = 0;
  List _pageList;

  void _onItemTapped(int index) {
    if(mounted) {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  var listItems =[
    BottomNavigationBarItem(
        icon: Icon(Icons.chat),
        title: Text('信息')
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.account_box),
        title: Text('通讯录')
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.camera),
        title: Text('发现')
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.assignment_ind),
        title: Text('我')
    )
  ];

  @override
  void initState() {
    super.initState();
    _pageList = [
      ChatPage(),
      AccountPage(),
      CameraPage(),
      AssignmentPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items:listItems,
        type: BottomNavigationBarType.fixed, // BottomNavigationBarType 中定义的类型，有 fixed 和 shifting 两种类型
//        iconSize: 24.0, // BottomNavigationBarItem 中 icon 的大小
        currentIndex: _currentIndex, // 当前所高亮的按钮index
        onTap: _onItemTapped, // 点击里面的按钮的回调函数，参数为当前点击的按钮 index
        fixedColor: Theme.of(context).primaryColor,// 如果 type 类型为 fixed，则通过 fixedColor 设置选中 item 的颜色
      ),
    );
  }
}