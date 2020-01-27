import 'package:caderneta_ifal_mobx/app/modules/messages/components/chat/chat_repository.dart';
import 'package:mobx/mobx.dart';

part 'chat_controller.g.dart';

class ChatController = _ChatBase with _$ChatController;

abstract class _ChatBase with Store {
  @action
  List getMessages() {
    ChatRepository chatRepository = ChatRepository();
    return chatRepository.getMessages();
  }
}
