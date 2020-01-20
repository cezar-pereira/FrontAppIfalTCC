import 'package:flutter/material.dart';

class ReportPage extends StatefulWidget {
  final String title;
  const ReportPage({Key key, this.title = "Report"}) : super(key: key);

  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Relatório"),
    );
  }
}
