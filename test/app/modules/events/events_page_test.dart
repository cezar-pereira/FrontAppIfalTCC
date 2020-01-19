import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:caderneta_ifal_mobx/app/modules/events/events_page.dart';

main() {
  testWidgets('EventsPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(EventsPage(title: 'Events')));
    final titleFinder = find.text('Events');
    expect(titleFinder, findsOneWidget);
  });
}
