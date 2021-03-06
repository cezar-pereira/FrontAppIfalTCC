import 'package:caderneta_ifal_mobx/app/modules/chat/chat_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:caderneta_ifal_mobx/app/modules/chat/chat_page.dart';

class ChatModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ChatController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => ChatPage()),
      ];

  static Inject get to => Inject<ChatModule>.of();
}
