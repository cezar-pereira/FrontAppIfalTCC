import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:caderneta_ifal_mobx/app/modules/announcements/announcements_page.dart';

main() {
  testWidgets('AnnouncementsPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(
        buildTestableWidget(AnnouncementsPage(title: 'Announcements')));
    final titleFinder = find.text('Announcements');
    expect(titleFinder, findsOneWidget);
  });
}
