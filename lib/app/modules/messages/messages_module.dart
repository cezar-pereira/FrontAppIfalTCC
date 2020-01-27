import 'package:caderneta_ifal_mobx/app/modules/messages/components/chat/chat_controller.dart';
import 'package:caderneta_ifal_mobx/app/modules/messages/messages_controller.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:caderneta_ifal_mobx/app/modules/messages/messages_page.dart';

class MessagesModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MessagesController()),
        Bind((i) => ChatController()),
        Bind((i) => Dio()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => MessagesPage()),
      ];

  static Inject get to => Inject<MessagesModule>.of();
}
