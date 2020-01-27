import 'package:flutter/material.dart';

class Components {
  Future<void> dialogSearchPerson(context) async {
    List<String> listaTeste = [
      'Maria Tonieta',
      'José Crispim',
      'Júlio Cesar',
      'Cezar Pereira',
      'item',
      'item',
    ];
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: TextField(),
          content: SingleChildScrollView(
            child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              child: ListView.builder(
                itemCount: listaTeste.length,
                shrinkWrap: true, itemBuilder: (BuildContext context, int index) { 
                  return GestureDetector(
                    child: Text("${listaTeste[index]} $index"),
                  );
                 },
              ),
            ),
          ),
        );
      },
    );
  }
}
