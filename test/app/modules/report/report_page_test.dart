import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:caderneta_ifal_mobx/app/modules/report/report_page.dart';

main() {
  testWidgets('ReportPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ReportPage(title: 'Report')));
    final titleFinder = find.text('Report');
    expect(titleFinder, findsOneWidget);
  });
}
