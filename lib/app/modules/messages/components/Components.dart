import 'package:caderneta_ifal_mobx/app/modules/messages/components/list_users/list_users_page.dart';
import 'package:flutter/material.dart';

class Components {
  Future<void> dialogSearchPerson(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return ListUsersPage();
      },
    );
  }
}
