
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rcredit_apps/features/auth/auth_controller.dart';

import 'package:rcredit_apps/features/nav/nav_screen.dart';
import 'package:get/get.dart';

 class LoginScreen extends StatefulWidget {
   const LoginScreen({Key? key}) : super(key: key);

   @override
   State<LoginScreen> createState() => _LoginScreenState();
 }

 class _LoginScreenState extends State<LoginScreen> {

   bool obscureText = true;
   String? password;
   String? username;
   bool rememberPassword = false;


   final formKey = GlobalKey<FormState>();

   final authController = Get.put(AuthController());

    // final authController = Get.find<AuthController>();
   // final authController = Get.put(AuthController());
   void togglePasswordVisibility() {
     setState(() {
       obscureText = !obscureText;
     });
   }

   void LoginValidator(){

     if (formKey.currentState!.validate()) {

        authController.login(username, password);

       // Get.off(NavScreen());
     }
   }

   @override
   Widget build(BuildContext context) {
     final colorScheme = Theme.of(context).colorScheme;
     final textTheme = Theme.of(context).textTheme;

     return SafeArea(child: Scaffold(

       body: Container(
         padding: const EdgeInsets.symmetric(horizontal: 16),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [

             SizedBox(
               height: 32,
             ),
             Align(
               alignment: Alignment.center,
               child: Image.asset("assets/images/runner_logo.png",width: 100,),
             ),

              Expanded(
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        "লগইন করুন",
                        style: textTheme.titleMedium?.copyWith(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),

                      SizedBox(
                        height: 32,
                      ),

                      TextFormField(
                        initialValue: username,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Enter valid username';
                          }
                          return null;
                        }, onChanged: (value) {
                        setState(() {
                          username = value;
                        });
                      },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                        //    filled: true,
                            fillColor: Colors.white10,
                            focusedBorder: OutlineInputBorder(
                              borderSide:BorderSide(color: HexColor('#5054B0'),width: 1.5),
                              borderRadius: BorderRadius.circular(16),),

                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.horizontal(left: Radius.circular(16),right: Radius.circular(16)),
                            ),

                            hintText: "আইডি / ফোন নাম্বার",
                          prefixIcon: Icon(FluentIcons.person_24_regular,color: Colors.black38)

                        ),

                      ),

                      SizedBox(
                        height: 16,
                      ),

                      TextFormField(
                        initialValue: password,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Enter valid password';
                          }
                          return null;
                        }, onChanged: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                           focusedBorder: OutlineInputBorder(
                              borderSide:BorderSide(color: HexColor('#5054B0'),width: 1.5),
                              borderRadius: BorderRadius.circular(16),),

                            border: OutlineInputBorder(
                              borderSide:BorderSide(color: HexColor('#5054B0')),
                            borderRadius: BorderRadius.circular(50),),
                            hintText: "পাসওয়ার্ড",
                            prefixIcon: Icon(Icons.lock_outline_rounded,color: Colors.black38,),

                            suffixIcon: IconButton(
                                icon: Icon(
                                  obscureText ? Icons.visibility : Icons.visibility_off,
                                  color: HexColor('#5054B0'),
                                ),
                                onPressed: togglePasswordVisibility),
                        ),

                        keyboardType: TextInputType.text,
                        obscureText: obscureText,
                      ),

                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0)
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            //foregroundColor: colorScheme.onPrimary,
                            backgroundColor:HexColor('#5054B0'),

                          ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                          onPressed: (){

                          LoginValidator();

                          },
                          child: Text('লগইন',style: textTheme.bodyLarge?.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

           ],
         ),
       ),
       bottomNavigationBar: Row(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           RichText(
             text: TextSpan(
               style:  textTheme.bodyLarge?.copyWith(
                   fontSize: 12
                    ),
               children: const <TextSpan>[

                 TextSpan(text: 'সার্বিক সহযোগিতায়',style:TextStyle(color: Colors.black54,fontWeight: FontWeight.bold)),

                 TextSpan(text: '\t বন্ডস্টেইন টেকনলজি লিমিটেড!',style:TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold)),


               ],
             ),
           ),
             SizedBox(
             height: 32,
           )
         ],
       ),
     ));
   }
 }
