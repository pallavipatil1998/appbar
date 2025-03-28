import 'package:flutter/material.dart';

class ChatTabPage extends StatelessWidget {
  TabController tabController;

  ChatTabPage({required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     body: Stack(
       children: [
         Container(color: Colors.blue.shade200,),
         ElevatedButton(onPressed: (){
           tabController.animateTo(1,duration: Duration(seconds: 2),curve: Curves.bounceOut);
         },
             child: Text('Next')
         )
       ],
     ),
    );
  }
}
