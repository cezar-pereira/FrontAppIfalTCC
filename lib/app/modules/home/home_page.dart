import 'package:caderneta_ifal_mobx/app/modules/announcements/announcements_page.dart';
import 'package:caderneta_ifal_mobx/app/modules/events/events_page.dart';
import 'package:caderneta_ifal_mobx/app/modules/home/home_controller.dart';
import 'package:caderneta_ifal_mobx/app/modules/messages/messages_page.dart';
import 'package:caderneta_ifal_mobx/app/modules/report/report_page.dart';
import 'package:caderneta_ifal_mobx/app/modules/settings/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color _colorItemNavigationDisable = Colors.black54;
    HomeController homeController = HomeController();

    PageController _controllerPageView = PageController(initialPage: 0);

    return Observer(
      builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text(homeController.appBarTitle),
          ),
          body: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: _controllerPageView,
            onPageChanged: (index) {
            },
            children: <Widget>[
              EventsPage(),
              AnnouncementsPage(),
              MessagesPage(),
              ReportPage(),
              SettingsPage(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: _colorItemNavigationDisable,
            unselectedLabelStyle: TextStyle(color: _colorItemNavigationDisable),
            showUnselectedLabels: true,
            selectedItemColor: Theme.of(context).primaryColor,
            currentIndex: homeController.currentIndex,
            onTap: (index) {
              homeController.changeCurrentIndex(index);
              homeController.changeTitle(index);
              _controllerPageView.jumpToPage(index);
              print("Página atual: $index");
            },
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.date_range),
                title: Text('Eventos'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                title: Text('Comunicados'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                title: Text('Mensagens'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.assignment),
                title: Text('Relatório'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_vert),
                title: Text('Configurações'),
              ),
            ],
          ),
        );
      },
    );
  }
}