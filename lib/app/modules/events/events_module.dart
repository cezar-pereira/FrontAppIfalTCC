import 'package:caderneta_ifal_mobx/app/modules/events/events_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:caderneta_ifal_mobx/app/modules/events/events_page.dart';

class EventsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => EventsController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => EventsPage()),
      ];

  static Inject get to => Inject<EventsModule>.of();
}
