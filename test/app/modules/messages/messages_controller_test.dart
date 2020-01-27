import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:caderneta_ifal_mobx/app/modules/messages/messages_controller.dart';
import 'package:caderneta_ifal_mobx/app/modules/messages/messages_module.dart';

void main() {
  initModule(MessagesModule());
  MessagesController messages;

  setUp(() {
    messages = MessagesModule.to.get<MessagesController>();
  });

  group('MessagesController Test', () {
    test("First Test", () {
      expect(messages, isInstanceOf<MessagesController>());
    });

    test("Set Value", () {
      expect(messages.value, equals(0));
      messages.increment();
      expect(messages.value, equals(1));
    });
  });
}
