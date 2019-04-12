import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ChatPageState();
  }
}
class _ChatPageState extends State<ChatPage>
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('ChatPage'),
      ),
      body: new Center(
          child:
          FlatButton.icon(
            icon: Icon(
              Icons.bubble_chart,
              color: Colors.white,
            ),
            label: Text(
              'FlatButton',
            ),
            onPressed: () {
              print('click FlatButton');
            },
            color: Theme.of(context).primaryColor,
          )
      ),
    );
  }
}
