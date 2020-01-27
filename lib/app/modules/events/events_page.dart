import 'package:caderneta_ifal_mobx/app/modules/events/events_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class EventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    EventsController eventsController = EventsController();
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: eventsController.getEvents().length,
              itemBuilder: (BuildContext context, int index) {
                return Observer(
                  builder: (BuildContext context) {
                    return GestureDetector(
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 3, vertical: 3),
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
                              "${eventsController.getEvents()[index]['title']}",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              "${eventsController.getEvents()[index]['date']}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 16),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "${eventsController.getEvents()[index]['text']}",
                              maxLines: 5,
                              style: TextStyle(fontSize: 18),
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(height: 8),
            ),
          )
        ],
      ),
    );
  }
}
