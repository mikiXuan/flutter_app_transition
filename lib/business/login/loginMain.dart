import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginPageState();
  }
}
class _LoginPageState extends State<LoginPage>
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('LoginPage'),
      ),
      body: new Center(
        child: new Text('LoginPage')
        ,
      ),
    );
  }
}
