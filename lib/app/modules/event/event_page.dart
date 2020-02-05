import 'package:caderneta_ifal_mobx/app/modules/shared/models/Event.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class EventPage extends StatelessWidget {
  final Event event;

  EventPage({this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Evento"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  "${event.title}",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.teal[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.date_range,
                        color: Theme.of(context).primaryColor),
                    Expanded(child: Container()),
                    Text("${event.date}"),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.teal[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.location_on,
                        color: Theme.of(context).primaryColor),
                    Expanded(child: Container()),
                    Text("${event.location}"),
                  ],
                ),
              ),
              Divider(),
              Expanded(
                  child: ListView(
                children: <Widget>[Text("${event.text}")],
              )),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Share.share("${event.title}" +
              "\n\n" +
              "${event.date}" +
              "\n\n" +
              "${event.location}" +
              "\n\n" +
              "${event.text}");
        },
        focusColor: Colors.transparent,
        elevation: 0,
        disabledElevation: 0,
        hoverElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        backgroundColor: Colors.transparent,
        child: Tooltip(
            message: "Compartilhar",
            child: Icon(Icons.share, color: Colors.black)),
      ),
    );
  }
}