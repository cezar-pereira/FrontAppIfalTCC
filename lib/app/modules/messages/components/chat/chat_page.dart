import 'package:caderneta_ifal_mobx/app/modules/messages/components/chat/components/messageArea_widget.dart';
import 'package:flutter/material.dart';

// class ChatPage extends StatefulWidget {
//   final String title;
//   const ChatPage({Key key, this.title = "Chat"}) : super(key: key);

//   @override
//   _ChatPageState createState() => _ChatPageState();
// }

// class _ChatPageState extends State<ChatPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Column(
//         children: <Widget>[],
//       ),
//     );
//   }
// }


class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
        // actions: <Widget>[
        //   Container(
        //     padding: EdgeInsets.symmetric(horizontal: 8),
        //     alignment: Alignment.center,
        //     child: Text(
        //       "0",
        //       style: TextStyle(fontSize: 16),
        //     ),
        //   ),
        // ],
      ),
      // body: Stack(
      //   alignment: Alignment.bottomCenter,
      //   children: <Widget>[
      //     Container(
      //       margin: EdgeInsets.only(bottom: 60),
      //       child: ListView.builder(
      //         reverse: true,
      //         itemCount: messages.length,
      //         itemBuilder: (BuildContext context, int index) {
      //           return bodyMessage(
      //               message: messages[index]["message"],
      //               type: messages[index]["type"]);
      //         },
      //       ),
      //     ),
      //     MessageAreaWidget(),
      //   ],
      // ),
    );
  }

    Widget bodyMessage({message = "teste", type = "sent"}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Column(
        crossAxisAlignment:
            type == "sent" ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "01/01/2000 00:00",
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
                topLeft:
                    type == "sent" ? Radius.circular(40) : Radius.circular(0),
                topRight:
                    type == "sent" ? Radius.circular(0) : Radius.circular(40),
              ),
              color: type == "sent" ? Color(0xff82F1F5) : Color(0xff3E64FF),
            ),
            child: Text(message,
                style: TextStyle(
                    fontSize: 18,
                    color: type == "sent" ? Colors.black : Colors.white)),
          ),
        ],
      ),
    );
  }
}