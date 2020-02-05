import 'package:caderneta_ifal_mobx/app/modules/events/events_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';

class EventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    EventsController eventsController = EventsController();
    var scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        eventsController.getNextEvents();

      }
    });
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Observer(
        builder: (_) {
          if (eventsController.listEvents.error != null) {
            return Center(
              child: Text("Erro"),
            );
          }

          if (eventsController.listEvents.value == null) {
            return Center(child: CircularProgressIndicator());
          }

          var listEvents = eventsController.listEvents.value;
          return ListView.builder(
            controller: scrollController,
            itemCount: listEvents.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Get.toNamed('/event/', arguments: listEvents[index]);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Colors.black12,
                      )
                    ],
                  ),
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "${listEvents[index].title}",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        "${listEvents[index].date}",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "${listEvents[index].text}",
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
