import 'package:flutter_modular/flutter_modular.dart';

class EventsRepository extends Disposable {
//TEMPORARIO
  List events = [
    {
      "title": "Título",
      "date": "01/01/2020",
      "text":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    },
    {
      "title": "Título 2",
      "date": "02/02/2020",
      "text":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    },
  ];

  List getEvents() {
    return events;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
