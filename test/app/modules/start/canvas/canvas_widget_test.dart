import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:snake_mobx/app/modules/start/canvas/canvas_widget.dart';

main() {
  testWidgets('CanvasWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CanvasWidget()));
    final textFinder = find.text('Canvas');
    expect(textFinder, findsOneWidget);
  });
}
