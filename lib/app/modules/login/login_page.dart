import 'package:caderneta_ifal_mobx/app/modules/shared/Components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
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
    double heightScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 2,
                      color: Color(0xff3E64FF),
                    ),
                    curve(),
                  ],
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(30, heightScreen / 10, 30, 0),
                    margin: EdgeInsets.fromLTRB(30, heightScreen / 6, 30, 0),
                    height: MediaQuery.of(context).size.height / 1.7,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            blurRadius: 15,
                            spreadRadius: 0,
                            color: Colors.black26,
                            offset: Offset(0, 5)),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      children: <Widget>[
                        textFieldLogin(
                            text: "CPF",
                            controllerInput: textUserController,
                            boardType: TextInputType.number),
                        textFieldLogin(
                            text: "Senha",
                            controllerInput: textPassController,
                            isObscureText: true),
                        GestureDetector(
                          child: bottomConfirm(text: "ENTRAR"),
                          onTap: () {
                            print("Telefone: " + textPhoneController.text);
                            print("CPF: " + textCpfController.text);
                            Modular.to.pushReplacementNamed("/home");
                          },
                        ),
                        SizedBox(height: 25),
                        Container(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            child: Text(
                              "Esqueci a senha",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xFF3E64FF)),
                            ),
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    title: Text(
                                      "Recuperar Senha",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    content: Container(
                                      height: 350,
                                      width: 300,
                                      child: Column(
                                        children: <Widget>[
                                          textFieldLogin(
                                              maskFormatter: [maskFormatterCpf],
                                              controllerInput:
                                                  textCpfController,
                                              text: "CPF",
                                              boardType: TextInputType.number),
                                          textFieldLogin(
                                              controllerInput:
                                                  textPhoneController,
                                              text: "Número de telefone",
                                              maskFormatter: [
                                                maskFormatterPhone
                                              ],
                                              boardType: TextInputType.number),
                                          GestureDetector(
                                            child: bottomConfirm(
                                                text: "CONFIRMAR"),
                                            onTap: () {
                                              print("confirmou rec senha");
                                              print("Telefone: " +
                                                  textPhoneController.text);
                                              print("CPF: " +
                                                  textCpfController.text);
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
                Container(
                  height: heightScreen / 6,
                  margin: EdgeInsets.only(top: heightScreen / 11),
                  alignment: Alignment.topCenter,
                  child: Image.asset("assets/logo.png", fit: BoxFit.fill),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  curve() {
    return ClipPath(
      clipper: ClipHome(),
      child: Container(
        height: MediaQuery.of(context).size.height / 2,
        color: Color(0xff3E64FF),
        child: Center(
          child: Text("curve"),
        ),
      ),
    );
  }
}

class ClipHome extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    var controlPoint = Offset(((size.width / 2)), ((size.height / 4)));
    var endPoint = Offset(size.width, 0);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
