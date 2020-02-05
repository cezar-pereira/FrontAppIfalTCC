import 'package:caderneta_ifal_mobx/app/modules/event/event_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:caderneta_ifal_mobx/app/modules/event/event_page.dart';

class EventModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => EventController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => EventPage(event: args.data)),
      ];

  static Inject get to => Inject<EventModule>.of();
}
