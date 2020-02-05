import 'package:caderneta_ifal_mobx/app/modules/home/home_module.dart';
import 'package:caderneta_ifal_mobx/app/modules/login/login_controller.dart';
import 'package:caderneta_ifal_mobx/app/modules/login/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LoginController()),
      ];

  @override
  List<Router> get routers => [
        Router('/login', child: (_, args) => LoginPage()),
        Router('/home', module: HomeModule()),

      ];

  static Inject get to => Inject<LoginModule>.of();
}
