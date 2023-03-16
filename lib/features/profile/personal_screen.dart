import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';
import 'package:rcredit_apps/core/theme/color_scheme.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
         body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {

                    Get.back();
                  },
                  icon: CircleAvatar(
                    child: Icon(Icons.arrow_back),
                    radius: 24.0,
                    backgroundColor: HexColor("#F5F6FC"),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "ব্যক্তিগত তথ্য",
                    style: textTheme.titleMedium?.copyWith(
                        color: lightColorScheme.surfaceTint,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 32,
          ),
          CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage('assets/images/user_image.png'),
            backgroundColor: Colors.transparent,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Mr.Samshul Abedin",
            style: textTheme.titleMedium?.copyWith(
                color: lightColorScheme.surfaceTint,
                fontSize: 18,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 8,
          ),
          Card(
            color: HexColor('#5054B0'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
              child: Text("একটিভ",
                  style: textTheme.bodyLarge?.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: colorScheme.onPrimary)),
            ),
          ),

          SizedBox(
            height: 64,
          ),

          Card(
            margin: EdgeInsets.symmetric(horizontal: 16),
            color: HexColor('##F5F6FC'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text("নাম",
                      style: textTheme.bodyLarge?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54)),

                  Text("Mr. Samshul Abedin",
                      style: textTheme.bodyLarge?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54)),

                    SizedBox(
                      height: 16,
                    ),

                  Divider(
                    color: colorScheme.onPrimary,
                    height: 2,
                  ),

                  SizedBox(
                    height: 16,
                  ),

                  Text("মোবাইল নাম্বার",
                      style: textTheme.bodyLarge?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54)),

                  Text("+88016-XXXXXXXX",
                      style: textTheme.bodyLarge?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54)),

                  SizedBox(
                    height: 16,
                  ),

                  Divider(
                    height: 2,
                    color: colorScheme.onPrimary,
                  ),

                  SizedBox(
                    height: 16,
                  ),
                  Text("ঠিকানা",
                      style: textTheme.bodyLarge?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54)),

                  Text("Mirpur, Dhaka-1216",
                      style: textTheme.bodyLarge?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54)),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
