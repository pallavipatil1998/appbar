import 'package:app_bar/Tabs/calls_Tab.dart';
import 'package:app_bar/Tabs/chat_tab.dart';
import 'package:flutter/material.dart';

import 'Tabs/status_tab.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> with SingleTickerProviderStateMixin {
  late TabController mTabController;
  String mTitle ="Whatsapp";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    mTabController=TabController(length: 3, vsync: this);

    mTabController.addListener((){
      print(mTabController.index);
      if(mTabController.index==0){
        mTitle="Chat";
      }else if(mTabController.index==1){
        mTitle="Status";
      }else{
        mTitle="Call";
      }
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: Text(mTitle),
          bottom:  TabBar(
            controller: mTabController,
            // isScrollable: true,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Text("Chat"),
                Text("Status"),
                Text("Call")
              ]),
        ),
        body:TabBarView(
          controller: mTabController,
            children: [
              ChatTabPage(tabController: mTabController,),
              StatausTabPage(),
              CallTabPage()

        ])
      ),
    );
  }
}
