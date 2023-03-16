import 'package:flutter/material.dart';
import 'package:rcredit_apps/features/auth/login_screen.dart';
import 'package:rcredit_apps/features/nav/home/home_screen.dart';
import 'package:rcredit_apps/features/nav/nav_screen.dart';
import 'package:rcredit_apps/features/notification/notification_screen.dart';
import 'package:get/get.dart';
import 'package:rcredit_apps/features/splash/nav/slider_screen.dart';
import 'package:rcredit_apps/features/splash/splash_screen1.dart';
import 'package:rcredit_apps/features/splash/splash_screen2.dart';
import 'package:rcredit_apps/features/target/target_screen.dart';

import 'core/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
   debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme(),
      themeMode: ThemeMode.light,

      home:LoginScreen(),
    );
  }
}


