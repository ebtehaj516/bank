import 'package:flutter/material.dart';
import 'package:light_banking/feautures/card/my_card_view.dart';
import 'package:light_banking/feautures/home/presentation/views/home_view.dart';
import 'package:light_banking/feautures/settings/presentation/views/setting_view.dart';
import 'package:light_banking/feautures/statistics/presentation/view/statistics_view.dart';

import '../../../../core/utils/app_colors.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex=0;
  Widget getWidget(int Index){
    switch(Index){
      case 0:return  HomeView();
      case 1:return  MyCardView();
      case 2:return  StatisticView();
      case 3:return  SettingView();

    }
    return Container();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height:86,
        width: double.infinity,
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          backgroundColor: AppColor.white1,
          selectedItemColor: AppColor.primaryColor,
          unselectedItemColor: AppColor.darkgray,
          type: BottomNavigationBarType.fixed,
          onTap: (int Index){
            setState(() {
              _currentIndex=Index;
            });
          },
          items:const[
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),label: "MyCards"),
            BottomNavigationBarItem(icon: Icon(Icons.pie_chart),label: "Statistics"),
            BottomNavigationBarItem(icon: Icon(Icons.settings_outlined),label: "Settings"),

          ],
        ),
      ),
      body: getWidget(_currentIndex),
    );
  }
}

