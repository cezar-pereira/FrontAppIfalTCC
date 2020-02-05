import 'package:caderneta_ifal_mobx/app/modules/shared/models/User.dart';
import 'package:caderneta_ifal_mobx/app/modules/shared/repository/userList_repository.dart';
import 'package:mobx/mobx.dart';

part 'list_users_controller.g.dart';

class ListUsersController = _ListUsersBase with _$ListUsersController;

abstract class _ListUsersBase with Store {
  _ListUsersBase() {
    getUsers();
  }
  var userListRepository = UserListRepository();

  @observable
  ObservableList listUsers = [].asObservable();

  @observable
  String filter = "";

  @computed
  List<User> get listFiltered {
    if (filter.isEmpty) {
      print("entrou no if");
      return listUsers.toList();
    } else {
      print("entrou no else");
      return listUsers.where(
          (element) => element.name.toString().toLowerCase().contains(filter)).toList();
    }
  }

  @action
  // setFilter(String value) => filter = value;
  setFilter(String value) {
    print("chegou $value");
    filter = value;

    print("filter vale: $filter");
  }

  @action
  getUsers() async {
    userListRepository
        .getUsers()
        .then((value) => listUsers = value.asObservable());
  }
}
