

import 'package:caderneta_ifal_mobx/app/modules/chat/chat_module.dart';
import 'package:caderneta_ifal_mobx/app/modules/event/event_module.dart';
import 'package:caderneta_ifal_mobx/app/modules/home/home_controller.dart';
import 'package:caderneta_ifal_mobx/app/modules/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),


      ];

  static Inject get to => Inject<HomeModule>.of();
}
