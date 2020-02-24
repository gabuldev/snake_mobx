import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:snake_mobx/app/modules/start/canvas/canvas_controller.dart';
import 'package:snake_mobx/app/app_module.dart';

void main() {
  initModule(AppModule());
  CanvasController canvas;

  setUp(() {
    canvas = AppModule.to.get<CanvasController>();
  });

  group('CanvasController Test', () {
    test("First Test", () {
      expect(canvas, isInstanceOf<CanvasController>());
    });

    test("Set Value", () {
      expect(canvas.value, equals(0));
      canvas.increment();
      expect(canvas.value, equals(1));
    });
  });
}
