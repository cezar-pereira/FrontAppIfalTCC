import 'package:mobx/mobx.dart';

part 'events_controller.g.dart';

class EventsController = _EventsBase with _$EventsController;

abstract class _EventsBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
