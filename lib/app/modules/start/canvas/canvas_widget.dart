import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:snake_mobx/app/modules/start/canvas/canvas_controller.dart';
import 'package:snake_mobx/app/modules/start/controls/controls_controller.dart';
import 'package:snake_mobx/app/modules/start/start_module.dart';

class CanvasWidget extends StatefulWidget {
  @override
  _CanvasWidgetState createState() => _CanvasWidgetState();
}

class _CanvasWidgetState extends ModularState<CanvasWidget, CanvasController> {
  ReactionDisposer disposer;

  @override
  void initState() {
    disposer = reaction((_) => StartModule.to.get<ControlsController>().status,
        (value) {
      if (value != null) controller.render(value);
    });
    super.initState();
  }

  @override
  void dispose() {
    disposer.call();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height * 0.02;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.green,
      child: Stack(
        children: <Widget>[
          Observer(builder: (_) {
            return Stack(
              children: controller.snake
                  .map((i) => Positioned(
                      bottom: i.x * size,
                      left: i.y * size,
                      child: Container(
                        width: size,
                        height: size,
                        color: Colors.red,
                      )))
                  .toList(),
            );
          })
        ],
      ),
    );
  }
}
