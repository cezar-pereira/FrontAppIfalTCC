import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:caderneta_ifal_mobx/app/modules/event/event_controller.dart';
import 'package:caderneta_ifal_mobx/app/modules/event/event_module.dart';

void main() {
  initModule(EventModule());
  EventController event;

  setUp(() {
    event = EventModule.to.get<EventController>();
  });

  group('EventController Test', () {
    test("First Test", () {
      expect(event, isInstanceOf<EventController>());
    });

    test("Set Value", () {
      expect(event.value, equals(0));
      event.increment();
      expect(event.value, equals(1));
    });
  });
}
