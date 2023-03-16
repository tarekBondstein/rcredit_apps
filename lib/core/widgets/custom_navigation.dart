
 import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rcredit_apps/features/nav/home/home_screen.dart';
import 'package:rcredit_apps/features/profile/account_screen.dart';
import 'package:rcredit_apps/features/target/target_screen.dart';


 class CustomNavigation extends StatefulWidget {
   const CustomNavigation({Key? key}) : super(key: key);

   @override
   State<CustomNavigation> createState() => _CustomNavigationState();
 }

 class _CustomNavigationState extends State<CustomNavigation> with TickerProviderStateMixin {

   late TabController tabController;
   int selectedIndex = 0;

   @override
   void initState() {
     super.initState();
     tabController = TabController(length: 3, vsync: this);
   }

   List<Widget> myChilders =   [
     HomeScreen(),
     TargetScreen(),
     AccountScreen()
   ];

   @override
   Widget build(BuildContext context) {
     return Scaffold(
         body: TabBarView(
          //   physics: const NeverScrollableScrollPhysics(),
             controller: tabController,
             children: myChilders),
         bottomNavigationBar: BottomAppBar(
           height: kBottomNavigationBarHeight,
           child: TabBar(
               onTap: (index) {
                 setState(() {
                   selectedIndex = index;
                 });
               },
               indicator: const UnderlineTabIndicator(
                   insets: EdgeInsets.only(bottom: kBottomNavigationBarHeight),
                   borderSide: BorderSide(color: Colors.red, width: 2)),
               labelColor: Colors.red,
               unselectedLabelColor: Colors.grey,
               controller: tabController,
               tabs: [
                 Tab(
                   iconMargin: EdgeInsets.only(bottom: 4),
                   icon: Icon(Icons.home),

                   child: const Text(
                     'Home',
                     style: TextStyle(fontSize: 12),
                   ),
                 ),

                   Tab(
                   iconMargin: EdgeInsets.only(bottom: 4),
                   icon: Icon(Icons.info),
                   child: Text(
                     'About',
                     style: TextStyle(fontSize: 12),
                   ),
                 ),
                   Tab(
                   iconMargin: EdgeInsets.only(bottom: 4),
                   icon: Icon(Icons.settings),
                   child: Text(
                     'Setting',
                     style: TextStyle(fontSize: 12),
                   ),
                 )
               ]),
         ));
   }
 }
