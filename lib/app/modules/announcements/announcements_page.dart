import 'package:flutter/material.dart';

class AnnouncementsPage extends StatefulWidget {
  final String title;
  const AnnouncementsPage({Key key, this.title = "Announcements"})
      : super(key: key);

  @override
  _AnnouncementsPageState createState() => _AnnouncementsPageState();
}

class _AnnouncementsPageState extends State<AnnouncementsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("Comunicados"),
      ),
    );
  }
}
