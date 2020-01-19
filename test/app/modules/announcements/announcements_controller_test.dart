import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:caderneta_ifal_mobx/app/modules/announcements/announcements_controller.dart';
import 'package:caderneta_ifal_mobx/app/modules/announcements/announcements_module.dart';

void main() {
  initModule(AnnouncementsModule());
  AnnouncementsController announcements;

  setUp(() {
    announcements = AnnouncementsModule.to.get<AnnouncementsController>();
  });

  group('AnnouncementsController Test', () {
    test("First Test", () {
      expect(announcements, isInstanceOf<AnnouncementsController>());
    });

    test("Set Value", () {
      expect(announcements.value, equals(0));
      announcements.increment();
      expect(announcements.value, equals(1));
    });
  });
}
