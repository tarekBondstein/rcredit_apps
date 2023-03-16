
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rcredit_apps/core/theme/color_scheme.dart';
import 'package:rcredit_apps/core/widgets/custom_navigation.dart';
import 'package:rcredit_apps/features/nav/home/home_screen.dart';
import 'package:rcredit_apps/features/notification/notification_screen.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rcredit_apps/features/profile/account_screen.dart';
import 'package:rcredit_apps/features/target/target_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> with TickerProviderStateMixin{

  int selectedIndex = 0;

  List<Widget> pages =   [
    HomeScreen(),
    TargetScreen(),
    AccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

     return Scaffold(
      body: pages[selectedIndex],

       bottomNavigationBar:  Column(
         mainAxisSize: MainAxisSize.min,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [

          Align(
             alignment: selectedIndex==0? Alignment.centerLeft:selectedIndex==1? Alignment.center:Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
                height: 4,
                 width: 32,
              color: HexColor('#5054B0'),
              child: Text("-",style: textTheme.headlineLarge?.copyWith(
                color: HexColor('#5054B0'),
                fontSize: 14,
                fontWeight:selectedIndex==0?FontWeight.bold: FontWeight.w400,
              )),
            ),
          ) ,

           Container(
             height: 70,
             decoration: BoxDecoration(
             color: Colors.white60,
               boxShadow: [
                 const BoxShadow(
                   color: Colors.black12,
                   blurRadius: 2,
                   offset: Offset(0.0, 2.0),
                 ),
               ],
             ),
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 24),
               child: Row(

                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [

                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       IconButton(
                         enableFeedback: false,
                         onPressed: () {
                           setState(() {
                             selectedIndex = 0;
                           });
                         },
                         icon: Icon(
                           FluentIcons.home_24_regular,
                           color: selectedIndex==0? HexColor('#5054B0'):colorScheme.outline,
                           size: 24,
                         )
                       ),

                       Text("হোম",style: textTheme.headlineLarge?.copyWith(
                         color:selectedIndex==0? HexColor('#5054B0'):colorScheme.secondary,
                         fontSize: 14,
                         fontWeight:selectedIndex==0?FontWeight.bold: FontWeight.w400,
                       ))
                     ],
                   ),

                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [

                       IconButton(
                         enableFeedback: false,
                         onPressed: () {
                           setState(() {
                             selectedIndex = 1;
                           });
                         },
                         icon:  Icon(
                           MdiIcons.target,
                           color:  selectedIndex==1? HexColor('#5054B0'):colorScheme.outline,
                           size: 24,
                         ),
                       ),

                       Text("টার্গেট",style: textTheme.headlineLarge?.copyWith(
                         color:selectedIndex==1? HexColor('#5054B0'):colorScheme.secondary,
                         fontSize: 14,
                        fontWeight:selectedIndex==1?FontWeight.bold: FontWeight.w400,
                       ))
                     ],
                   ),

                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [

                       IconButton(
                         enableFeedback: false,
                         onPressed: () {
                           setState(() {
                             selectedIndex = 2;
                           });
                         },
                         icon: Icon(
                           FluentIcons.person_24_regular,
                           size: 24,
                           color:  selectedIndex==2? HexColor('#5054B0'):colorScheme.outline,
                         ),
                       ),
                       Text("একাউন্ট",style: textTheme.headlineLarge?.copyWith(
                         color:selectedIndex==2? HexColor('#5054B0'):colorScheme.secondary,
                         fontSize: 14,
                         fontWeight:selectedIndex==2?FontWeight.bold: FontWeight.w400,
                       ))
                     ],
                   ),




                  /* BottomNavigationBar(
                     elevation: 2,
                     items: const <BottomNavigationBarItem>[
                       BottomNavigationBarItem(
                         icon: Icon(FluentIcons.home_24_regular),
                         label: 'Home',
                       ),

                     BottomNavigationBarItem(//mdiTarget
                         icon: Icon(MdiIcons.target),
                         label: 'টার্গেট',
                       ),

                       BottomNavigationBarItem(
                         icon: Icon(FluentIcons.person_24_regular),
                         label: 'একাউন্ট',
                       ),
                     ],
                     currentIndex: selectedIndex,
                     selectedItemColor: Colors.teal,
                     onTap: (int index) {

                       setState(() {
                         selectedIndex = index;
                       });
                     },
                   )*/
                 ],
               ),
             ),
           ),
         ],
       ),
    );
  }


  void ind(){

  }
}
