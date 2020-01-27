import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Components {
  Widget textFieldLogin(
      {controllerInput,
      text, TextInputType
      boardType,
      maskFormatter,
      isObscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(text, style: TextStyle(color: Colors.teal[300], fontWeight: FontWeight.w500, fontSize: 16),),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.teal[50],
            borderRadius: BorderRadius.circular(8),
          ),
          margin: EdgeInsets.only(bottom: 20),
          padding: EdgeInsets.fromLTRB(24, 0, 8, 0),
          height: 55,
          child: TextField(
            controller: controllerInput,
            obscureText: isObscureText,
            keyboardType: boardType,
            inputFormatters: maskFormatter,
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration.collapsed(
              hintText: "",
            ),
          ),
        )
      ],
    );
  }

  Widget bottomConfirm({text}) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xff3E64FF),
      ),
      height: 55,
      child: Text(
        text,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}
