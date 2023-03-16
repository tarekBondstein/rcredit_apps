
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rcredit_apps/core/theme/color_scheme.dart';


 class NotificationScreen extends StatefulWidget {
   const NotificationScreen({Key? key}) : super(key: key);
 
   @override
   State<NotificationScreen> createState() => _NotificationScreenState();
 }
 
 class _NotificationScreenState extends State<NotificationScreen> {

   List _elements = [

     {'topicName': 'মআপনার অবশিষ্ট আছে ১০ কিমি। আপনার গাড়ি সচল রাখতে দয়া করে রিচার্জ করুন।','group': 'আজকের নোটিফিকেশন'},
     {'topicName': 'আপনার গাড়ির ইঞ্জিন সচল হয়েছে। 100 কিমি রিচার্জ করার জন্য আপনাকে ধন্যবাদ।','group': 'আজকের নোটিফিকেশন'},
     {'topicName': 'আপনার গাড়ির ইঞ্জিন বন্ধ হয়ে গিয়েছে। আপনার গাড়ি সচল রাখতে দয়া করে রিচার্জ করুন।','group': 'আজকের নোটিফিকেশন'},
     {'topicName': 'আপনার গাড়ির ইঞ্জিন সচল হয়েছে। 100 কিমি রিচার্জ করার জন্য আপনাকে ধন্যবাদ।','group': '২১ ফেব্রুয়ারি'},
     {'topicName': 'আপনার গাড়ির ইঞ্জিন বন্ধ হয়ে গিয়েছে। আপনার গাড়ি সচল রাখতে দয়া করে রিচার্জ করুন।','group': '২১ ফেব্রুয়ারি'},
     {'topicName': 'আপনার গাড়ির ইঞ্জিন সচল হয়েছে। 100 কিমি রিচার্জ করার জন্য আপনাকে ধন্যবাদ।','group': '২১ ফেব্রুয়ারি'},
     {'topicName': 'আপনার গাড়ির ইঞ্জিন সচল হয়েছে। 100 কিমি রিচার্জ করার জন্য আপনাকে ধন্যবাদ।','group': '২১ ফেব্রুয়ারি'},

   ];

   @override
   Widget build(BuildContext context) {
     final colorScheme = Theme.of(context).colorScheme;
     final textTheme = Theme.of(context).textTheme;

     return SafeArea(
         child: Scaffold(
           appBar: AppBar(
             toolbarHeight: 0.0,
           ),
        body: SizedBox(
         height: double.infinity,

         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
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
                       "নোটিফিকেশন",
                       style: textTheme.titleMedium?.copyWith(
                           color: lightColorScheme.surfaceTint,
                           fontSize: 18,
                           fontWeight: FontWeight.bold),
                     ),
                   ),
                 ),

                 Align(
                   alignment: Alignment.centerLeft,
                   child: IconButton(
                     onPressed: () {

                       Get.back();
                     },
                     icon: CircleAvatar(
                       child: Icon(MdiIcons.checkAll,size: 16,),
                       radius: 24.0,
                       backgroundColor: HexColor("#F5F6FC"),
                     ),
                   ),
                 ),
               ],
             ),

             Expanded(
               child: GroupedListView<dynamic, String>(
                 elements: _elements,
                 groupBy: (element) => element['group'],
                 groupSeparatorBuilder: (String value) => Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text(
                     value,
                     textAlign: TextAlign.left,
                     style: TextStyle(fontSize: 18,
                         fontWeight: FontWeight.bold),
                   ),
                 ),
                 itemBuilder: (c,element) {
                   return Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(16),
                     ),
                     elevation: 0.1,
                     color: HexColor('#F5F6FC'),
                     margin: new EdgeInsets.symmetric(horizontal: 8.0,
                         vertical: 8.0),
                     child: ListTile(
                       contentPadding:
                       EdgeInsets.symmetric(horizontal: 10.0,
                           vertical: 10.0),
                       //leading: Icon(Icons.account_circle),
                       title: Text(
                         "${element['topicName']}",
                         maxLines: 2,
                         style: textTheme.headline4?.copyWith(
                           color: lightColorScheme.onTertiaryContainer, fontSize: 14,fontWeight: FontWeight.bold,),
                       ),
                       subtitle: Padding(
                         padding: const EdgeInsets.only(top: 4),
                         child: Text(
                           "দুপুর ১২ঃ২০",
                           style: textTheme.headline4?.copyWith(
                             color: lightColorScheme.outline, fontSize: 14,fontWeight: FontWeight.bold,),
                         ),
                       ),//
                        leading: Image.asset("assets/images/alert.png",fit: BoxFit.fill, width: 24,),
                     ),
                   );
                 },
               ),
             ),
           ],
         ),
       ),
     ));
   }
 }
 