import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:snake_mobx/app/modules/start/controls/controls_widget.dart';

main() {
  testWidgets('ControlsWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ControlsWidget()));
    final textFinder = find.text('Controls');
    expect(textFinder, findsOneWidget);
  });
}
