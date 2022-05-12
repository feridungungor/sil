import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sil/pages/account/account_page.dart';
import 'package:sil/pages/alerts/alerts_page.dart';
import 'package:sil/pages/dashboard/dashboard_controller.dart';
import 'package:sil/pages/news/news_page.dart';

import '../home/home_page.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller){
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              HomePage(),
              NewsPage(),
              AlertsPage(),
              AccountPage(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red,
          currentIndex: controller.tabIndex,
          onTap: controller.changeTabIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            _BottomNavigationBarItem(label: 'Home',icon: CupertinoIcons.home),
            _BottomNavigationBarItem(label: 'News', icon: CupertinoIcons.news),
            _BottomNavigationBarItem(label: 'Alerts', icon: CupertinoIcons.bell),
            _BottomNavigationBarItem(label: 'Acount', icon: CupertinoIcons.profile_circled),

          ],
        ),
      );
    });
  }

  _BottomNavigationBarItem({required IconData icon,required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
