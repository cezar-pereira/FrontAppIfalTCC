import 'package:caderneta_ifal_mobx/app/modules/messages/messages_repository.dart';
import 'package:mobx/mobx.dart';

part 'messages_controller.g.dart';

class MessagesController = _MessagesBase with _$MessagesController;

abstract class _MessagesBase with Store {

  @action
  List getMessages()  {
    MessagesRepository messagesRepository = MessagesRepository();
    return messagesRepository.getMessages();
  }
}
