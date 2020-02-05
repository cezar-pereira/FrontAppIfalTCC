import 'package:caderneta_ifal_mobx/app/modules/shared/models/User.dart';
import 'package:flutter_modular/flutter_modular.dart';

class UserListRepository extends Disposable {
  List usersList = [
    {"id": 0, "name": "Helanio"},
    {"id": 1, "name": "Cézar"},
    {"id": 2, "name": "Pereira"},
  ];

  Future<List<User>> getUsers() async {
    List<User> users = [];
    for (var item in usersList) {
      User user = User(id: item["id"], name: item["name"]);
      users.add(user);
    }
    await Future.delayed(const Duration(seconds: 1));
    return users;
  }

  @override
  void dispose() {}
}
