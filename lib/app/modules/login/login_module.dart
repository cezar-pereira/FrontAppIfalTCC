import 'package:caderneta_ifal_mobx/app/modules/home/home_page.dart';
import 'package:caderneta_ifal_mobx/app/modules/login/login_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:caderneta_ifal_mobx/app/modules/login/login_page.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LoginController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => LoginPage()),
        Router('/home', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
