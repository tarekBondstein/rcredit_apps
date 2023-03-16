
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rcredit_apps/core/theme/color_scheme.dart';

 class PaymentScreen extends StatefulWidget {
   const PaymentScreen({Key? key}) : super(key: key);

   @override
   State<PaymentScreen> createState() => _PaymentScreenState();
 }

 class _PaymentScreenState extends State<PaymentScreen> {
   @override
   Widget build(BuildContext context) {
     final textTheme = Theme.of(context).textTheme;
     final colorScheme = Theme.of(context).colorScheme;

    return SafeArea(child: Scaffold(
       body: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
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
                     "কিলোমিটার ক্রয়",
                     style: textTheme.titleMedium?.copyWith(
                         color: lightColorScheme.surfaceTint,
                         fontSize: 14,
                         fontWeight: FontWeight.bold),
                   ),
                 ),
               ),
             ],
           ),

           SizedBox(
             height: 16,
           ),

           Padding(
             padding: const EdgeInsets.only(left: 16,top: 16,right: 16),
             child: Text(
               "পেমেন্ট পদ্ধতি নির্বাচন করুন",
               style: textTheme.titleMedium?.copyWith(
                   color: lightColorScheme.secondary,
                   fontSize: 18,
                   fontWeight: FontWeight.bold),
             ),
           ),

           SizedBox(
             height: 16,
           ),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          SizedBox(
            height: 100,
            width: 160,
            child: Card(
              color: HexColor('#FDE9F2'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Image.asset("assets/images/pay2.png",fit: BoxFit.fill, width: 64,),

                  Text(
                      "বিকাশ",
                      style: textTheme.bodyLarge?.copyWith(fontSize: 14,color: HexColor('#E2136E'))),
                ],
              ),
            ),
          ),

          SizedBox(
            width: 8,
          ),

          SizedBox(
            height: 100,
            width: 160,
            child: Card(
              color: HexColor('##FDE9D2'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Image.asset("assets/images/pay1.png",fit: BoxFit.fill, width: 64,),


                  Text(
                      "বিকাশ",
                      style: textTheme.bodyLarge?.copyWith(fontSize: 14,color: HexColor('#E2136E'))),
                ],
              ),
            ),
          ),


        ],
      )
         ],
       ),
     ));
   }
 }
