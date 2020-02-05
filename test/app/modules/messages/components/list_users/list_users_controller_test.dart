import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:caderneta_ifal_mobx/app/modules/messages/components/list_users/list_users_controller.dart';
import 'package:caderneta_ifal_mobx/app/modules/messages/components/list_users/list_users_module.dart';

void main() {
  initModule(ListUsersModule());
  ListUsersController listusers;

  setUp(() {
    listusers = ListUsersModule.to.get<ListUsersController>();
  });

  group('ListUsersController Test', () {
    test("First Test", () {
      expect(listusers, isInstanceOf<ListUsersController>());
    });

    test("Set Value", () {
      expect(listusers.value, equals(0));
      listusers.increment();
      expect(listusers.value, equals(1));
    });
  });
}
