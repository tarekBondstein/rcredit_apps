
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rcredit_apps/core/theme/color_scheme.dart';
import 'package:rcredit_apps/features/payment/payment_screen.dart';
import 'package:rcredit_apps/features/profile/personal_screen.dart';
import 'package:get/get.dart';
import 'package:rcredit_apps/features/transaction/transaction_screen.dart';

 class AccountScreen extends StatefulWidget {
   const AccountScreen({Key? key}) : super(key: key);

   @override
   State<AccountScreen> createState() => _AccountScreenState();
 }

 class _AccountScreenState extends State<AccountScreen> {
   @override
   Widget build(BuildContext context) {
     final textTheme = Theme.of(context).textTheme;
     final colorScheme = Theme.of(context).colorScheme;

     return SafeArea(child: Scaffold(
        appBar: AppBar(
         title: Text(
           "একাউন্ট",
           style: textTheme.titleMedium?.copyWith(
               color: lightColorScheme.surfaceTint,
               fontSize: 18,
               fontWeight: FontWeight.bold),
         ),
         backgroundColor: colorScheme.onPrimary,
         elevation: 0,
         centerTitle: true,
         actions: [

           IconButton(
             onPressed: () {},
             icon: CircleAvatar(
               child: Icon(FluentIcons.alert_24_regular),
               radius: 24.0,
               backgroundColor: HexColor("#F5F6FC"),
             ),
           ),
         ],
       ),

       body: Container(
         margin: EdgeInsets.only(left: 8, right: 8),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [


             SizedBox(
               height: 16,
             ),

             Row(
               children: [
                 CircleAvatar(
                   radius: 30.0,
                   backgroundImage: AssetImage('assets/images/user_image.png'),
                   backgroundColor: Colors.transparent,
                 ),

                 SizedBox(
                   width: 8,
                 ),

                 Column(
                   children: [
                     Text("Mr. Samshul Abedin",
                         style: textTheme.headlineLarge?.copyWith(
                           color: colorScheme.surfaceTint,
                           fontSize: 18,
                           fontWeight: FontWeight.w600,
                         )),

                     SizedBox(
                       height: 4,
                     ),

                     Card(
                       color: HexColor('#5054B0'),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(16),
                       ),
                       child: Padding(
                         padding: const EdgeInsets.only(left: 16,right: 16,top: 5,bottom: 5),
                         child: Text("একটিভ",
                             style: textTheme.bodyLarge
                                 ?.copyWith(fontSize: 14, fontWeight: FontWeight.w400,color: colorScheme.onPrimary)),
                       ),
                     )
                   ],
                 )
               ],
             ),

             SizedBox(
               height: 32,
             ),

             Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(16),
                 //set border radius more than 50% of height and width to make circle
               ),
               elevation: 0.3,
               color: HexColor('#FCFDFF'),
               child: InkWell(
                 focusColor: Colors.white,
                 borderRadius: BorderRadius.circular(16),
                 onTap: (){
                   //  PersonalScreen();
                   Get.to(PersonalScreen());
                 },
                 child: Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [

                     Row(
                       children: [

                         CircleAvatar(
                           backgroundColor:  HexColor('#F5F6FC'),
                           radius: 16,
                           child: Icon(
                             FluentIcons.person_24_regular,size: 16,
                           ),
                         ),

                        SizedBox(width: 16,),

                         Text("ব্যক্তিগত তথ্য",
                             style: textTheme.headlineLarge?.copyWith(
                               color: HexColor('#5C5D72'),
                               fontSize: 14,
                               fontWeight: FontWeight.w400,
                             )),
                       ],
                     ),

                       Icon(
                         Icons.arrow_forward_ios_outlined,
                         size: 16,
                       )
                     ],
                   ),
                 ),
               ),
             ),

             Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(16),

               ),
               elevation: 0.3,
               color: HexColor('#FCFDFF'),
               child: InkWell(
                 focusColor: Colors.white,
                 borderRadius: BorderRadius.circular(16),
                 onTap: (){
                   Get.to(PaymentScreen());

                 },
                 child: Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [

                     Row(
                       children: [

                         CircleAvatar(//mdiCardMinusOutline
                           backgroundColor:  HexColor('#F5F6FC'),
                           radius: 16,
                           child: Icon(
                             MdiIcons.cardMinusOutline,size: 16,
                           ),
                         ),
                          SizedBox(
                            width: 16,
                          ),
                         Text("কিলোমিটার ক্রয় করুন",
                             style: textTheme.headlineLarge?.copyWith(
                               color: HexColor('#5C5D72'),
                               fontSize: 14,
                               fontWeight: FontWeight.w400,
                             )),
                       ],
                     ),

                       Icon(
                         Icons.arrow_forward_ios_outlined,
                         size: 16,
                       )
                     ],
                   ),
                 ),
               ),
             ),

             Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(16),
                 //set border radius more than 50% of height and width to make circle
               ),
               elevation: 0.3,
               color: HexColor('#FCFDFF'),
               child: InkWell(
                 focusColor: Colors.white,
                 borderRadius: BorderRadius.circular(16),
                 onTap: (){
                   Get.to(TransactionHistoryScreen());
                 },
                 child: Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [

                     Row(

                       children: [

                         CircleAvatar(
                           backgroundColor:  HexColor('#F5F6FC'),
                           radius: 16,
                           child:  Image.asset('assets/images/trans.png'),
                         ),

                          SizedBox(
                            width: 16,
                          ),

                         Text("লেনদেন ইতিহাস",
                             style: textTheme.headlineLarge?.copyWith(
                               color: HexColor('#5C5D72'),
                               fontSize: 14,
                               fontWeight: FontWeight.w400,
                             )),

                       ],
                     ),

                       Icon(
                         Icons.arrow_forward_ios_outlined,
                         size: 16,
                       )
                     ],
                   ),
                 ),
               ),
             ),

             Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(16),
                 //set border radius more than 50% of height and width to make circle
               ),
               elevation: 0.3,
               color: HexColor('#FCFDFF'),
               child: InkWell(
                 focusColor: Colors.white,
                 borderRadius: BorderRadius.circular(16),
                 onTap: (){

                 },
                 child: Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [

                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor:  HexColor('#F5F6FC'),
                            radius: 16,
                            child:  Image.asset('assets/images/private.png'),
                          ),

                          SizedBox(
                            width: 16,
                          ),
                          Text("গোপনীয়তা ও নীতি",
                              style: textTheme.headlineLarge?.copyWith(
                                color: HexColor('#5C5D72'),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              )),

                        ],
                      ),
                       Icon(
                         Icons.arrow_forward_ios_outlined,
                         size: 16,
                       )
                     ],
                   ),
                 ),
               ),
             ),

             Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(16),
               ),
               elevation: 0.3,
               color: HexColor('#FCFDFF'),
               child: InkWell(
                 focusColor: Colors.white,
                 borderRadius: BorderRadius.circular(16),
                 onTap: (){
                 },
                 child: Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [

                       Row(
                         children: [
                           CircleAvatar(
                             backgroundColor:  HexColor('#FFEDED'),
                             radius: 16,
                             child:  Icon(MdiIcons.logout,size: 16,)
                           ),

                           SizedBox(
                             width: 16,
                           ),
                           Text("লগআউট",
                               style: textTheme.headlineLarge?.copyWith(
                                 color: HexColor('#FF6464'),
                                 fontSize: 14,
                                 fontWeight: FontWeight.w400,
                               )),
                         ],
                       ),


                       Icon(
                         Icons.arrow_forward_ios_outlined,
                         size: 16,
                       )
                     ],
                   ),
                 ),
               ),
             )

           ],
         ),
       ),
     ));
   }
 }
