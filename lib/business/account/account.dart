import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AccountPageState();
  }
}
class _AccountPageState extends State<AccountPage>
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('AccountPage'),
      ),
      body: new Center(
        child: new Text('AccountPage'),
      ),
    );
  }
}
