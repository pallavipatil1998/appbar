import 'package:app_bar/Tabs/calls_Tab.dart';
import 'package:app_bar/Tabs/chat_tab.dart';
import 'package:flutter/material.dart';

import 'Tabs/status_tab.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});

  @override
  State<BottomNavigationBarPage> createState() => _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  List<Widget> listNavigationDest= [
    StatausTabPage(),
    CallTabPage(),
    StatausTabPage(),
    CallTabPage(),
  ];

  int mIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomNavigationBar"),),
      body: listNavigationDest[mIndex],
      bottomNavigationBar:NavigationBar(
        selectedIndex: mIndex,
          onDestinationSelected: (index){
          mIndex=index;
          setState(() {});

          },
          indicatorColor: Colors.pink,
          //labal show
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,

          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.account_circle_outlined),selectedIcon: Icon(Icons.account_circle_rounded), label: "Account"),
            NavigationDestination(icon: Icon(Icons.settings), label: "Settings")


      ])
    );
  }
}
