import 'package:mobx/mobx.dart';

part 'announcements_controller.g.dart';

class AnnouncementsController = _AnnouncementsBase
    with _$AnnouncementsController;

abstract class _AnnouncementsBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
