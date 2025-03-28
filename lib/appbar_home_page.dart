
import 'package:flutter/material.dart';

class AppbarHomePage extends StatefulWidget {
  const AppbarHomePage({super.key});

  @override
  State<AppbarHomePage> createState() => _AppbarHomePageState();
}

class _AppbarHomePageState extends State<AppbarHomePage> {
  List<Map<String, dynamic>> listPopupMenuItems = [
    {'icon': Icons.settings, 'title': 'Settings'},
    {'icon': Icons.info_outline, 'title': 'About Us'},
    {'icon': Icons.call, 'title': 'Contact Us'},
    {'icon': Icons.account_circle, 'title': 'My Profile'},
    {'icon': Icons.logout, 'title': 'Sign Out'},
  ];
  String mInitialValue = "Settings";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade800,
        foregroundColor: Colors.white,
        leading: IconButton(onPressed: (){},
            icon: Icon(Icons.account_circle,size: 27,)
        ),
        leadingWidth: 70,
        title: Text("Home"),
        centerTitle: true,
        //round border
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(5)),
          //border
          side: BorderSide(width: 6,color: Colors.lightGreen.withOpacity(0.5),strokeAlign: BorderSide.strokeAlignOutside),
        ),
        elevation: 20,
        shadowColor: Colors.blueGrey,

        //for big size
        bottom: PreferredSize(
            preferredSize: Size(double.infinity,300),
            child: Container()
        ),
        flexibleSpace: Container(height: 200,color: Colors.blueGrey,),
         actions: [
           IconButton(onPressed: (){}, icon:Icon(Icons.camera_alt_outlined)),
           IconButton(onPressed: (){}, icon:Icon(Icons.settings)),
           PopupMenuButton(
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
             shadowColor: Colors.black,
             color: Colors.orange.shade300,
               initialValue: mInitialValue,
               onSelected: (value){
               mInitialValue=value.toString();
               setState(() {

               });
               },
               itemBuilder: (_){
             return [
               PopupMenuItem(
                 value:"Settings" ,
                 onTap: (){
                 },
                   child: Row(
                     children: [
                    Icon(Icons.settings),
                    SizedBox(width: 10,),
                    Text("Settings"),
                  ],
               )),
               PopupMenuItem(
                   value:"info" ,
                   onTap: (){},
                   child: Row(
                     children: [
                       Icon(Icons.info),
                       SizedBox(width: 10,),
                       Text("info"),
                     ],
                   )),
               PopupMenuItem(
                   value:"account" ,
                   onTap: (){},
                   child: Row(
                     children: [
                       Icon(Icons.account_circle),
                       SizedBox(width: 10,),
                       Text("account"),
                     ],
                   )),
             ];
           }),
         ],

      ),

    );
  }
}


/*
 itemBuilder: (_) {
                     return listPopupMenuItems
                         .map((eachData) => PopupMenuItem(
                             value: eachData['title'],
                             onTap: () {},
                             child: Row(
                               children: [
                                 Icon(
                                   eachData['icon'],
                                   color: Colors.blueGrey,
                                 ),
                                 SizedBox(
                                   width: 11,
                                 ),
                                 Text(eachData['title']),
                               ],
                             )))
                         .toList();
                   })

*/
