import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:caderneta_ifal_mobx/app/modules/event/event_page.dart';

main() {
  testWidgets('EventPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(EventPage(title: 'Event')));
    final titleFinder = find.text('Event');
    expect(titleFinder, findsOneWidget);
  });
}
