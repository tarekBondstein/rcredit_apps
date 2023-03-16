
import 'package:flutter/material.dart';

 class SplashScreenThree extends StatelessWidget {
   const SplashScreenThree({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     final textTheme = Theme.of(context).textTheme;
     final colorScheme = Theme.of(context).colorScheme;

     return Scaffold(
       appBar: AppBar(
         title: Image.asset("assets/images/runner_logo.png",width: 100,),
         backgroundColor: colorScheme.onPrimary,
         elevation: 0,
         centerTitle: true,
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [

             Image.asset("assets/images/eay.png",width:200 ,height: 150,),

             SizedBox(
               height: 32,
             ),
             Text(
                 "রসহজ পেমেন্ট",
                 style: textTheme.bodyLarge?.copyWith(fontSize: 18,fontWeight: FontWeight.bold)),

             SizedBox(
               height: 8,
             ),

             Text(
                 "সহজে পেমেন্ট করুন এবং আপনার সব লেনদেন দেখুন",
                 style: textTheme.bodySmall?.copyWith(fontSize: 14,color: colorScheme.secondary,fontWeight: FontWeight.w600))
           ],
         ),
       ),
     );
   }
 }
