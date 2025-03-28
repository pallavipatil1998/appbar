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
      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: Colors.deepPurple.shade800,
          unselectedItemColor: Colors.pink,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "Account"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings")


      ])
    );
  }
}
