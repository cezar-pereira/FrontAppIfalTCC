import 'package:mobx/mobx.dart';

part 'report_controller.g.dart';

class ReportController = _ReportBase with _$ReportController;

abstract class _ReportBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
