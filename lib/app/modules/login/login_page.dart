import 'package:caderneta_ifal_mobx/app/modules/home/home_controller.dart';
import 'package:caderneta_ifal_mobx/app/modules/shared/Components.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with Components {
  var maskFormatterPhone = new MaskTextInputFormatter(
      mask: '(##) #####-####', filter: {"#": RegExp(r'[0-9]')});
  var maskFormatterCpf = new MaskTextInputFormatter(
      mask: '###.###.###-##', filter: {"#": RegExp(r'[0-9]')});
  var textUserController = TextEditingController();
  var textPassController = TextEditingController();
  var textPhoneController = TextEditingController();
  var textCpfController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 12, right: 12),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                SizedBox(height: 12),
                Text(
                  "Entrar",
                  style: TextStyle(fontSize: 36),
                ),
                SizedBox(height: 20),
                Container(
                    margin: EdgeInsets.only(bottom: 20),
                    height: 250,
                    width: 250,
                    child: Image.asset("assets/logo.png", fit: BoxFit.cover)),
                textFieldLogin(
                    text: "CPF", controllerInput: textUserController),
                textFieldLogin(
                    text: "Senha",
                    controllerInput: textPassController,
                    isObscureText: true),
                GestureDetector(
                  child: bottomConfirm(text: "ENTRAR"),
                  onTap: () {
                    //TODA regra de negócio.
                    Navigator.pushReplacementNamed(context, "/home");
                  },
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    child: Text(
                      "Esqueci a senha",
                      style: TextStyle(fontSize: 20, color: Color(0xFF3E64FF)),
                    ),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            title: Text(
                              "Recuperar Senha",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25),
                            ),
                            content: Container(
                              height: 200,
                              width: 300,
                              child: Column(
                                children: <Widget>[
                                  textFieldLogin(
                                      maskFormatter: [maskFormatterCpf],
                                      controllerInput: textCpfController,
                                      text: "CPF",
                                      boardType: TextInputType.number),
                                  textFieldLogin(
                                      controllerInput: textPhoneController,
                                      text: "Número de telefone",
                                      maskFormatter: [maskFormatterPhone],
                                      boardType: TextInputType.number),
                                  GestureDetector(
                                    child: bottomConfirm(text: "CONFIRMAR"),
                                    onTap: () {
                                      print("confirmou rec senha");
                                      print("Telefone: " +
                                          textPhoneController.text);
                                      print("CPF: " + textCpfController.text);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
