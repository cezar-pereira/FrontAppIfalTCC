import 'package:flutter/material.dart';

class Components {
  Widget textFieldLogin(
      {controllerInput, text, boardType, maskFormatter, isObscureText = false}) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF3E64FF), width: 1.5),
        borderRadius: BorderRadius.circular(40),
      ),
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.fromLTRB(24, 0, 8, 0),
      height: 55,
      child: TextField(
          controller: controllerInput,
          obscureText: isObscureText,
          keyboardType: boardType,
          inputFormatters: maskFormatter,
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration.collapsed(hintText: text)),
    );
  }

  Widget bottomConfirm({text}) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
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
