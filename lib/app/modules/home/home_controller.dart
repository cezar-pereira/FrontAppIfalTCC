import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  @observable
  int currentIndex = 0;

  @observable
  String appBarTitle = "Eventos";

  @action
  void changeCurrentIndex(int value) => currentIndex = value;

  @action
  void changeTitle(index) {
    switch (index) {
      case 0:
        appBarTitle = "Eventos";
        break;
      case 1:
        appBarTitle = "Comunicados";
        break;
      case 2:
        appBarTitle = "Mensagens";
        break;
      case 3:
        appBarTitle = "Relatório";
        break;
      case 4:
        appBarTitle = "Mais";
        break;
    }
  }
}
