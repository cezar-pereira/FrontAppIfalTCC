import 'package:caderneta_ifal_mobx/app/modules/events/events_repository.dart';
import 'package:caderneta_ifal_mobx/app/modules/shared/models/Event.dart';
import 'package:mobx/mobx.dart';

part 'events_controller.g.dart';

class EventsController = _EventsBase with _$EventsController;

abstract class _EventsBase with Store {
  var eventsRepository = EventsRepository();

  int currentIndex = 0;
  int itemPerPage = 5;

  @observable
  ObservableFuture<List<Event>> listEvents;

  _EventsBase() {
    getEvents();
  }

  @action
  getEvents() async {
    listEvents =
        eventsRepository.getEvents(currentIndex, itemPerPage).asObservable();
  }

  @action
  getNextEvents() async {
    currentIndex += itemPerPage;
    print("chamou pra pegar eventos");
  }
}
