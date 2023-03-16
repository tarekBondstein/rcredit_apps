import 'package:flutter/material.dart';
import 'package:rcredit_apps/core/theme/color_scheme.dart';
import 'package:rcredit_apps/features/auth/login_screen.dart';
import 'package:rcredit_apps/features/splash/splash_screen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:rcredit_apps/features/nav/nav_screen.dart';
import 'package:rcredit_apps/features/splash/splash_screen1.dart';
import 'package:rcredit_apps/features/splash/splash_screen2.dart';
import 'package:get/get.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  PageController _controller = PageController();

  bool onLastpage = false;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: Stack(
    children: [
      PageView(
        controller: _controller,
        onPageChanged: (index){

         setState(() {
           onLastpage = (index == 2);
         });
        },
        children: [
          SplashScreenFrist(),
          SplashScreenSecond(),
          SplashScreenThree()
        ],
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 12,left: 12,right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

               InkWell(
                onTap: (){
                 // _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                  Get.off(LoginScreen());
                },
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Colors.green,
                      )
                  ),
                  child: Text("এড়িয়ে যান",
                      style: textTheme.bodySmall
                          ?.copyWith(fontSize: 14, color: colorScheme.secondary)),
                ),
              ),

              SmoothPageIndicator(
                count: 3,
                effect: SlideEffect(activeDotColor: Colors.indigo,
                   dotWidth:  8.0,
                   dotHeight:  8.0,
                  //strokeWidth:  0.5,
                ),
                controller: _controller,

              ),
             onLastpage
              ?CircleAvatar(
                radius: 20,
                  backgroundColor: lightColorScheme.surfaceTint,
                  child: IconButton(
                      onPressed: () {
                       // _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                        Get.off(LoginScreen());
                      }, icon: Icon(Icons.arrow_forward_ios, size: 24,color: Colors.white,)))

                 :CircleAvatar(
                 radius: 20,
                 backgroundColor: lightColorScheme.surfaceTint,
                 child: IconButton(
                     onPressed: () {
                       _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                     }, icon: Icon(Icons.arrow_forward_ios, size: 24,color: Colors.white,)))


            ],
          ),
        ),
      )
    ],
      ),
    );
  }
}
