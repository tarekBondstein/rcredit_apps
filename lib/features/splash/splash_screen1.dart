
import 'package:flutter/material.dart';
import 'package:rcredit_apps/core/theme/color_scheme.dart';

 class SplashScreenFrist extends StatelessWidget {
   const SplashScreenFrist({Key? key}) : super(key: key);

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

             Image.asset("assets/images/splesh1.png",width:200 ,height: 150,),

             SizedBox(
               height: 32,
             ),

             Text(
                 "কিলোমিটার অনুসন্ধান",
                 style: textTheme.bodyLarge?.copyWith(fontSize: 18,fontWeight: FontWeight.bold)),

             SizedBox(
               height: 8,
             ),

             Text(
                 "অবশিষ্ট কিলোমিটার দেখুন খুব সহজেই",
                 style: textTheme.bodySmall?.copyWith(fontSize: 14,color: colorScheme.secondary,fontWeight: FontWeight.w600)),

             SizedBox(
               height: 8,
             ),
             Text(
                 "powered by runner group",
                 style: textTheme.bodySmall?.copyWith(fontSize: 14,color: colorScheme.secondary,))
           ],
         ),
       ),
     );
   }
 }
