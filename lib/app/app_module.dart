
import 'package:caderneta_ifal_mobx/app/modules/shared/repository/userList_repository.dart';
import 'package:caderneta_ifal_mobx/app/app_controller.dart';
import 'package:caderneta_ifal_mobx/app/app_widget.dart';
import 'package:caderneta_ifal_mobx/app/modules/event/event_module.dart';
import 'package:caderneta_ifal_mobx/app/modules/login/login_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => UserListRepository()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: LoginModule()),
        Router('/event', module: EventModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
