import 'package:caderneta_ifal_mobx/app/modules/events/events_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class EventsModule extends ChildModule {
  @override
  List<Bind> get binds => [
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => EventsPage()),
      ];

  static Inject get to => Inject<EventsModule>.of();
}
