import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer"),),
      drawer: Drawer(
        width: 300,
        shadowColor: Colors.blueGrey,
         backgroundColor: Colors.purple.shade200,
        child: Column(
          children: [
            Container(
              padding:  EdgeInsets.all(70),
              child: Align(
                alignment: Alignment.center,
                child: Column(children: [
                  CircleAvatar(),
                  Text("Pallavi@gmail.com")
                ],),
              ),
              height: 200,color: Colors.blue.shade200,
            ),
            Expanded(
              child: ListView(
                children: [
                ListTile(
                  leading: Icon(Icons.account_circle_outlined),
                  title: Text("Account"),
                ),
                  ListTile(
                    leading: Icon(Icons.account_circle_outlined),
                    title: Text("Account"),
                  ),
                  ListTile(
                    leading: Icon(Icons.account_circle_outlined),
                    title: Text("Account"),
                  ),
                  ListTile(
                    leading: Icon(Icons.account_circle_outlined),
                    title: Text("Account"),
                  ),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
