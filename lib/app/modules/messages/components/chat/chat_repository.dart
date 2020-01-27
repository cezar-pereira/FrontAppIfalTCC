import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';

class ChatRepository extends Disposable {
  List messages = [
    {"message": "Testeeee", "type": "sent"},
    {"message": "Testeeee2", "type": "sent"},
    {"message": "Testeeeeeeeeeeeeeee", "type": "received"},
    {"message": "Testeeee", "type": "sent"},
    {"message": "Testeeee", "type": "sent"},
    {"message": "Testeeee", "type": "sent"},
    {"message": "Testeeee", "type": "sent"},
    {
      "message":
          "Testeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee",
      "type": "received"
    },
  ];

  List getMessages() {
    return messages;
  }

  // Future fetchPost(Dio client) async {
  //   final response =
  //       await client.get('https://jsonplaceholder.typicode.com/posts/1');
  //   return response.data;
  // }

  //dispose will be called automatically
  @override
  void dispose() {}
}
