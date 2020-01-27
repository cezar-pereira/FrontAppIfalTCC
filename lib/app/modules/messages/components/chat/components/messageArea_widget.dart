import 'dart:async';

import 'package:flutter/material.dart';

class MessageAreaWidget extends StatefulWidget {
  @override
  _MessageAreaWidgetState createState() => _MessageAreaWidgetState();
}

class _MessageAreaWidgetState extends State<MessageAreaWidget> {
  bool audioEnabled = false;
  var duration = const Duration(seconds: 1);
  static TextEditingController _fieldMessage = TextEditingController();
  IconData iconSendMessage = Icons.mic_none;
  bool audioStart = false;
  bool audioDrag = false;
  bool audioCanceled = false;
  String audioTime = "00:00";
  Stopwatch swatch = Stopwatch();

  void startTimeAudio() {
    Timer(duration, keepRunning);
    swatch.start();
  }

  void resetAudioTime() {
    swatch.reset();
    swatch.stop();
  }

  void keepRunning() {
    if (swatch.isRunning) {
      startTimeAudio();
    }
    setState(() {
      audioTime = swatch.elapsed.inMinutes.toString().padLeft(2, "0") +
          ":" +
          (swatch.elapsed.inSeconds % 60).toString().padLeft(2, "0");
    });

    print(audioTime);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      width: double.infinity,
      color: Color(0xffA4EAED),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Stack(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: TextFormField(
                              controller: _fieldMessage,
                              maxLines: null,
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                border: InputBorder.none,
                                hintText: ("Digite uma mensagem"),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      GestureDetector(
                        child: Icon(Icons.attach_file),
                      ),
                    ],
                  ),
                  Visibility(
                    visible: audioDrag,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Color(0xffA4EAED),
                      child: targetCancelAudio(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 40,
            width: 40,
            child: (audioEnabled && _fieldMessage.text.length > 0)
                ? widgetSendAudio()
                : widgetSendMessage(),
          ),
        ],
      ),
    );
  }

  widgetSendMessage() {
    return IconButton(
      icon: Icon(Icons.send),
      onPressed: () {
        print(_fieldMessage.text);
      },
    );
  }

  widgetSendAudio() {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Visibility(
          visible: audioStart,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.red),
          ),
        ),
        LongPressDraggable(
          onDragCompleted: () {
            print("terminou de arrastar e cancelou envio do audio");
            resetAudioTime();
          },
          onDraggableCanceled: (velocity, offset) {
            print("nao deslizou e enviar audio");
            resetAudioTime();
          },
          child: Icon(Icons.mic_none),
          onDragStarted: () {
            setState(() {
              startTimeAudio();
              audioDrag = true;
            });
          },
          onDragEnd: (value) {
            setState(() {
              audioDrag = false;
            });
          },
          data: "micro",
          axis: Axis.horizontal,
          feedback: Icon(Icons.mic),
          childWhenDragging: Container(),
        ),
      ],
    );
  }

  Widget targetCancelAudio() {
    return Container(
      child: DragTarget(
        builder: (context, List<String> candidateData, rejectedData) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(audioTime),
              Text("< Deslize para cancelar"),
            ],
          );
        },
        onWillAccept: (data) {
          return true;
        },
        onAccept: (data) {
          print("cancelou envio do audio");
          audioCanceled = true;
        },
      ),
    );
  }
}
