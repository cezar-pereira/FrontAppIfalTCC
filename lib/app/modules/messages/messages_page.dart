import 'package:caderneta_ifal_mobx/app/modules/messages/components/Components.dart';
import 'package:caderneta_ifal_mobx/app/modules/messages/components/chat/chat_page.dart';
import 'package:caderneta_ifal_mobx/app/modules/messages/messages_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MessagesPage extends StatelessWidget with Components {
  @override
  Widget build(BuildContext context) {
    MessagesController messagesController = MessagesController();
    return Scaffold(
      body: Container(
        // color: Color(0xffECFCFF),
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: messagesController.getMessages().length,
                itemBuilder: (BuildContext context, int index) {
                  return Observer(
                    builder: (BuildContext context) {
                      return GestureDetector(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return ChatPage();
                        })),
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                color: Colors.black12,
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(8),
                          height: 110,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "${messagesController.getMessages()[index]['responsible']}",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.fromLTRB(15, 3, 15, 3),
                                    decoration: BoxDecoration(
                                        color: Color(0xff3E64FF),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: Text(
                                      "${messagesController.getMessages()[index]['unread_messages']}",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "${messagesController.getMessages()[index]['child']}",
                                style: TextStyle(fontWeight: FontWeight.w300),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "${messagesController.getMessages()[index]['message']}",
                                maxLines: 2,
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          dialogSearchPerson(context);
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
