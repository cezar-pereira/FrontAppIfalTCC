import 'package:caderneta_ifal_mobx/app/modules/messages/components/list_users/list_users_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ListUsersPage extends StatelessWidget {
  final ListUsersController listUsersController = ListUsersController();
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: TextField(
        decoration: InputDecoration(

          hintText: "Pesquisar por nome",
        ),
        controller: textEditingController,
        onChanged: listUsersController.setFilter,
      ),
      content: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height / 2,
          width: double.maxFinite,
          child: Observer(
            builder: (_) {
              if (listUsersController.listUsers.length == 0) {
                return Center(child: CircularProgressIndicator());
              }
              return ListView.builder(
                itemCount: listUsersController.listFiltered.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    child:
                        Text("${listUsersController.listFiltered[index].name}"),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

// class ListUsersPage extends StatefulWidget {
//   final String title;
//   const ListUsersPage({Key key, this.title = "ListUsers"}) : super(key: key);

//   @override
//   _ListUsersPageState createState() => _ListUsersPageState();
// }

// class _ListUsersPageState extends State<ListUsersPage> {
//   @override
//   Widget build(BuildContext context) {
//     // return AlertDialog(
//     //       title: TextField(),
//     //       content: SingleChildScrollView(
//     //         child: Container(
//     //           height: double.maxFinite,
//     //           width: double.maxFinite,
//     //           child: ListView.builder(
//     //             itemCount: 2,
//     //             shrinkWrap: true, itemBuilder: (BuildContext context, int index) {
//     //               return GestureDetector(
//     //                 // child: Text("${usersList[index]['name']}"),
//     //                 child: Text("oi"),
//     //               );
//     //              },
//     //           ),
//     //         ),
//     //       ),
//     //     );

//     return Observer(
//       builder: (_) {

//         return Container();
//       },
//     );
//   }
// }
