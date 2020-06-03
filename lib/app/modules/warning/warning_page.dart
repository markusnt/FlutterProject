import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'warning_controller.dart';

class WarningPage extends StatefulWidget {
  final String title;
  const WarningPage({Key key, this.title = "Warning"}) : super(key: key);

  @override
  _WarningPageState createState() => _WarningPageState();
}

class _WarningPageState extends ModularState<WarningPage, WarningController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
