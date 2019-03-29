import 'package:flutter/material.dart';

class ChatSubPage extends StatefulWidget
{
  static const String routeName = '/ChatSubPage';
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ChatSubPageState();
  }
}
class _ChatSubPageState extends State<ChatSubPage>
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('_ChatSubPageState'),
      ),
      body: new Center(
        child: new Text('_ChatSubPageState'),
      ),
    );
  }
}
