import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CameraPageState();
  }
}
class _CameraPageState extends State<CameraPage>
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('CameraPage'),
      ),
      body: new Center(
        child: new Text('CameraPage'),
      ),
    );
  }
}
