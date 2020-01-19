import 'package:caderneta_ifal_mobx/app/modules/announcements/announcements_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:caderneta_ifal_mobx/app/modules/announcements/announcements_page.dart';

class AnnouncementsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AnnouncementsController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => AnnouncementsPage()),
      ];

  static Inject get to => Inject<AnnouncementsModule>.of();
}
