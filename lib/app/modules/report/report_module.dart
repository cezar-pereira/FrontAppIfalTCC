import 'package:caderneta_ifal_mobx/app/modules/report/report_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:caderneta_ifal_mobx/app/modules/report/report_page.dart';

class ReportModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ReportController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => ReportPage()),
      ];

  static Inject get to => Inject<ReportModule>.of();
}
