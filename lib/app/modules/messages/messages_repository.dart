import 'package:flutter_modular/flutter_modular.dart';

class MessagesRepository extends Disposable {

//TEMPORARIO
  List messages = [
    {
      "responsible": "Maria Bezerra",
      "child": "Joaquim",
      "message":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      "unread_messages": "20"
    },
    {
      "responsible": "José Algostinho",
      "child": "Zeca",
      "message":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
      "unread_messages": "20"
    },
  ];

  List getMessages() {
    return messages;
  }


  //dispose will be called automatically
  @override
  void dispose() {}
}
