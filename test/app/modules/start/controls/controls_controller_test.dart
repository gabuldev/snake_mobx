import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:snake_mobx/app/modules/start/controls/controls_controller.dart';
import 'package:snake_mobx/app/modules/start/start_module.dart';

void main() {
  initModule(StartModule());
  ControlsController controls;

  setUp(() {
    controls = StartModule.to.get<ControlsController>();
  });

  group('ControlsController Test', () {
    test("First Test", () {
      expect(controls, isInstanceOf<ControlsController>());
    });

    test("Set Value", () {
      expect(controls.value, equals(0));
      controls.increment();
      expect(controls.value, equals(1));
    });
  });
}
