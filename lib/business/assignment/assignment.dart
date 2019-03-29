import 'package:flutter/material.dart';

class AssignmentPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AssignmentPageState();
  }
}
class _AssignmentPageState extends State<AssignmentPage>
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('AssignmentPage'),
      ),
      body: new Center(
        child: new Text('AssignmentPage'),
      ),
    );
  }
}
