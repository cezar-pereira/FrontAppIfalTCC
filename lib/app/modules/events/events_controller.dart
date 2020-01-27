import 'package:caderneta_ifal_mobx/app/modules/events/events_repository.dart';
import 'package:mobx/mobx.dart';

part 'events_controller.g.dart';

class EventsController = _EventsBase with _$EventsController;

abstract class _EventsBase with Store {


  @action
  List getEvents() {
    EventsRepository eventsRepository = EventsRepository();
    return eventsRepository.getEvents();
  }
}
