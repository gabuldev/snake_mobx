import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:snake_mobx/app/modules/start/canvas/canvas_widget.dart';
import 'package:snake_mobx/app/modules/start/controls/controls_widget.dart';
import 'start_controller.dart';

class StartPage extends StatefulWidget {
  final String title;
  const StartPage({Key key, this.title = "Start"}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends ModularState<StartPage, StartController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Stack(
      children: <Widget>[CanvasWidget(), ControlsWidget()],
    ));
  }
}
