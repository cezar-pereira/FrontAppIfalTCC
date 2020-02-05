import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:caderneta_ifal_mobx/app/modules/messages/components/list_users/list_users_page.dart';

main() {
  testWidgets('ListUsersPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(ListUsersPage(title: 'ListUsers')));
    final titleFinder = find.text('ListUsers');
    expect(titleFinder, findsOneWidget);
  });
}
