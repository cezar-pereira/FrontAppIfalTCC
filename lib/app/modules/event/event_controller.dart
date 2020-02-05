import 'package:mobx/mobx.dart';

part 'event_controller.g.dart';

class EventController = _EventBase with _$EventController;

abstract class _EventBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
