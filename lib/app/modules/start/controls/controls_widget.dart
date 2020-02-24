import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:snake_mobx/app/modules/start/controls/controls_controller.dart';

import '../start_status.dart';

class ControlsWidget extends StatefulWidget {
  final Color color;

  const ControlsWidget({Key key, this.color = Colors.blue}) : super(key: key);

  @override
  _ControlsWidgetState createState() => _ControlsWidgetState();
}

class _ControlsWidgetState
    extends ModularState<ControlsWidget, ControlsController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CircleAvatar(
                backgroundColor: widget.color,
                child: IconButton(
                    icon: Icon(Icons.keyboard_arrow_up),
                    onPressed: () {
                      controller.change(ControlStatus.up);
                    })),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: widget.color,
                  child: IconButton(
                      icon: Icon(Icons.keyboard_arrow_left),
                      onPressed: () {
                        controller.change(ControlStatus.left);
                      }),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .1,
                ),
                CircleAvatar(
                  backgroundColor: widget.color,
                  child: IconButton(
                      icon: Icon(Icons.keyboard_arrow_right),
                      onPressed: () {
                        controller.change(ControlStatus.right);
                      }),
                )
              ],
            ),
            CircleAvatar(
                backgroundColor: widget.color,
                child: IconButton(
                    icon: Icon(Icons.keyboard_arrow_down),
                    onPressed: () {
                      controller.change(ControlStatus.down);
                    }))
          ],
        ),
      ),
    );
  }
}
