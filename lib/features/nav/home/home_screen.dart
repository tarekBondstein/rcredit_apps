import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badge;
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:rcredit_apps/features/notification/notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
        elevation: 0.0,
       toolbarHeight: 80,
        backgroundColor: HexColor("#5054B0"),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('assets/images/user_image.png'),
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "স্বাগতম",
                      style: textTheme.titleLarge?.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: colorScheme.onPrimary),
                    ),
                    Row(
                      children: [
                        Text(
                          "DM-GA-2222",
                          style: textTheme.titleLarge?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: colorScheme.onPrimary),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 40,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: [

          badge.Badge(
              showBadge: true,
              ignorePointer: false,
               position: const badge.BadgePosition(bottom: 36, end: 13),
              //  badgeContent: Expanded(child: Image.asset("assets/images/ellipse.png",width: 0.5,height: 0.5,)),
              badgeColor:HexColor("#5054B0"),
              child: IconButton(
                onPressed: () {

               Get.to(NotificationScreen());
                },
                icon: CircleAvatar(
                  child: Icon(FluentIcons.alert_24_regular,size: 24,),
                   radius: 24.0,
                   backgroundColor: HexColor("#F5F6FC"),
                ),
              )
              ),

        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                color: HexColor("#5054B0"),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned.fill(
                    top: 0,
                    left: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "আপনি গাড়ি চালাতে পারবেন",
                          style: textTheme.titleLarge?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: colorScheme.onPrimary),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        CircleAvatar(
                          child: Text(
                            "৩০০ কিমি",
                            style: textTheme.titleLarge?.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: colorScheme.onPrimary),
                          ),
                          radius: 70.0,
                          backgroundColor: HexColor("#5054B0"),
                          backgroundImage: AssetImage(
                            'assets/images/ellipse2.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    bottom: -40,
                    right: 0,
                    left: 0,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Card(
                         margin: EdgeInsets.symmetric(horizontal: 16),
                        color: HexColor("#FFF8FB"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        //  margin: EdgeInsets.only(left: 16,right: 16),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 20.0,
                                backgroundColor: HexColor("#FDE9F2"),
                                child: Image.asset('assets/images/icon.png',width: 32,height: 32,),
                              ),
                              Text(
                                "কিলোমিটার ক্রয় করুন",
                                style: textTheme.titleLarge?.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: HexColor("#E2136E")),
                              ),
                              Icon(Icons.arrow_forward_ios_outlined,
                                  size: 24, color: HexColor("#E2136E"))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                   Positioned.fill(
                      left: 0,
                       top: 0,
                       bottom: -200,
                       child: Image.asset("assets/images/Vector.png")),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),

            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "মালিকানা হস্তান্তর",
                  style: textTheme.titleLarge?.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: colorScheme.primary),
                ),
              ),
            ),

            Card(
              margin: EdgeInsets.all(8),
              elevation: 4,
                child: Image.asset(
              "assets/images/wnership.png",
            ))
          ],
        ),
      ),
    ));
  }
}
