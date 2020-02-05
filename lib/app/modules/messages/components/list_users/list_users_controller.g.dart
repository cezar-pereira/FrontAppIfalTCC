// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_users_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListUsersController on _ListUsersBase, Store {
  Computed<List<User>> _$listFilteredComputed;

  @override
  List<User> get listFiltered => (_$listFilteredComputed ??=
          Computed<List<User>>(() => super.listFiltered))
      .value;

  final _$listUsersAtom = Atom(name: '_ListUsersBase.listUsers');

  @override
  ObservableList<dynamic> get listUsers {
    _$listUsersAtom.context.enforceReadPolicy(_$listUsersAtom);
    _$listUsersAtom.reportObserved();
    return super.listUsers;
  }

  @override
  set listUsers(ObservableList<dynamic> value) {
    _$listUsersAtom.context.conditionallyRunInAction(() {
      super.listUsers = value;
      _$listUsersAtom.reportChanged();
    }, _$listUsersAtom, name: '${_$listUsersAtom.name}_set');
  }

  final _$filterAtom = Atom(name: '_ListUsersBase.filter');

  @override
  String get filter {
    _$filterAtom.context.enforceReadPolicy(_$filterAtom);
    _$filterAtom.reportObserved();
    return super.filter;
  }

  @override
  set filter(String value) {
    _$filterAtom.context.conditionallyRunInAction(() {
      super.filter = value;
      _$filterAtom.reportChanged();
    }, _$filterAtom, name: '${_$filterAtom.name}_set');
  }

  final _$getUsersAsyncAction = AsyncAction('getUsers');

  @override
  Future getUsers() {
    return _$getUsersAsyncAction.run(() => super.getUsers());
  }

  final _$_ListUsersBaseActionController =
      ActionController(name: '_ListUsersBase');

  @override
  dynamic setFilter(String value) {
    final _$actionInfo = _$_ListUsersBaseActionController.startAction();
    try {
      return super.setFilter(value);
    } finally {
      _$_ListUsersBaseActionController.endAction(_$actionInfo);
    }
  }
}
