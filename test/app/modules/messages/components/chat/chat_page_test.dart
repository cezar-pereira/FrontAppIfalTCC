import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:caderneta_ifal_mobx/app/modules/messages/components/chat/chat_page.dart';

main() {
  testWidgets('ChatPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ChatPage(title: 'Chat')));
    final titleFinder = find.text('Chat');
    expect(titleFinder, findsOneWidget);
  });
}
