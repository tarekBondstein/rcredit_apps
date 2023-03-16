import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:badges/badges.dart' as badge;
import 'package:rcredit_apps/core/theme/color_scheme.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class TargetScreen extends StatefulWidget {
  const TargetScreen({Key? key}) : super(key: key);

  @override
  State<TargetScreen> createState() => _TargetScreenState();
}

class _TargetScreenState extends State<TargetScreen> {
  List<BarChartModel> data = [
    BarChartModel(
      day: "05",
      financial: 30,
      color: charts.ColorUtil.fromDartColor(Colors.blueGrey),
    ),
    BarChartModel(
      day: "06",
      financial: 20,
      color: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    BarChartModel(
      day: "07",
      financial: 80,
      color: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    BarChartModel(
      day: "08",
      financial: 50,
      color: charts.ColorUtil.fromDartColor(Colors.yellow),
    ),
    BarChartModel(
      day: "09",
      financial: 60,
      color: charts.ColorUtil.fromDartColor(Colors.lightBlueAccent),
    ),
    BarChartModel(
      day: "10",
      financial: 30,
      color: charts.ColorUtil.fromDartColor(Colors.pink),
    ),
    BarChartModel(
      day: "11",
      financial: 80,
      color: charts.ColorUtil.fromDartColor(Colors.purple),
    ),
  ];

  List customHight = [
  9,5,6,7,8,
  9,5,6,7,8,
  9,5,6,7,8,
  ];

  @override
  Widget build(BuildContext context) {


    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "financial",
        data: data,
        domainFn: (BarChartModel series, _) => series.day,
        measureFn: (BarChartModel series, _) => series.financial,
        colorFn: (BarChartModel series, _) => series.color,
      ),
    ];




    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "টার্গেট",
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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 8, right: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 130,
                child: Card(
                  color: HexColor('#F7C904'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    //set border radius more than 50% of height and width to make circle
                  ),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "গাড়ি সচল রাখতে আপনাকে ১৫ দিনের মাঝে সর্বনিম্ন ৫০০ কিলোমিটার চালাতে হবে।  আপনার ১৫ দিনের টার্গেট এখনও পূরন হয়নি।",
                        style: textTheme.bodyLarge?.copyWith(fontSize: 14)),
                  )),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Text("দূরত্ব রিপোর্ট",
                      style: textTheme.headlineLarge?.copyWith(
                        color: colorScheme.surfaceTint,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      )),
                  SizedBox(
                    width: 8,
                  ),
                  Text("( 07 ফেব্রুয়ারি -১৯ ফেব্রুয়ারি )",
                      style: textTheme.bodyLarge
                          ?.copyWith(fontSize: 14, fontWeight: FontWeight.w400))
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                  "আপনার গাড়ী সচল রাখতে আগামী ১৯ ফেব্রুয়ারি এর মাঝে  চালাতে হবে 200 কিলোমিটার।",
                  style: textTheme.bodyLarge
                      ?.copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
              SizedBox(
                height: 32,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 14),
                    children: <TextSpan>[
                      TextSpan(
                          text: "মোট দুরুত্ব",
                          style: textTheme.bodyLarge?.copyWith(
                            color: HexColor('#5C5D72'),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          )),
                      TextSpan(
                          text: '\t 300 কিমি',
                          style: textTheme.bodyLarge?.copyWith(
                            color: HexColor("#F7C904"),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          )),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 12,
              ),
              /* Expanded(
                child: charts.BarChart(
                  series,
                  animate: true,
                )) */

              SizedBox(
                height: 200,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [

                    Positioned(
                      top: 40,
                      child: Image.asset(
                        "assets/images/line.png",color:HexColor('#C9CFEF'),
                      ),
                    ),

                    Positioned(
                      top: 100,
                      child: Image.asset(
                        "assets/images/line.png",color:HexColor('#C9CFEF'),
                      ),
                    ),

                    Positioned(
                      top: 150,
                      child: Image.asset(
                        "assets/images/line.png",color:HexColor('#C9CFEF'),
                      ),
                    ),

                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("দূরুত্ব",
                          style: textTheme.headlineLarge?.copyWith(
                            color: HexColor('#5C5D72'),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                    ),

                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 35),
                        child: Row(
                          //  mainAxisAlignment: MainAxisAlignment.end,
                            children: List.generate(15, (index){

                              var km =(index+1)*4;

                              var date =(index+1)*1;

                              return Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("${km}",
                                          style: textTheme.headlineLarge?.copyWith(
                                            color: HexColor('#5C5D72'),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.normal,
                                          )),
                                    ),
                                  ),


                                Padding(
                                    padding: const EdgeInsets.only(left: 4,right: 4.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(4.0),
                                          topLeft: Radius.circular(4.0),
                                        ),
                                        color: HexColor('#C9CFEF'),
                                      ),
                                      width: 12,
                                      height:height/customHight[index],
                                    ),
                                  ),


                                  Text("${date}",
                                      style: textTheme.headlineLarge?.copyWith(
                                        color: HexColor('#5C5D72'),
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                      )),
                                ],
                              );
                            },
                            )),
                      ),
                    ),

                     Align(
                       alignment: Alignment.bottomLeft,
                       child: Text("তারিখ",
                          style: textTheme.headlineLarge?.copyWith(
                            color: HexColor('#5C5D72'),
                              fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                     ),


                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));


  }

  CustomChart(textTheme,height){
    return Wrap(
      children: List.generate(3, (index){
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Text("দূরুত্ব ৩০",
                style: textTheme.headlineLarge?.copyWith(
                  color: HexColor('#5C5D72'),
                  // fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                )),

            /*    Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("দূরুত্ব ৩০",
                    style: textTheme.headlineLarge?.copyWith(
                      color: HexColor('#5C5D72'),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    )),
              ),
            ),*/

/*
            Padding(
              padding: const EdgeInsets.only(left: 35,right: 4),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4.0),
                    topLeft: Radius.circular(4.0),
                  ),
                  color: HexColor('#C9CFEF'),
                ),
                width: 12,
                height:height/ 9,
              ),
            ),

            Row(
              children: [

                Text("তারিখ\t",
                    style: textTheme.headlineLarge?.copyWith(
                      color: HexColor('#5C5D72'),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    )),


                Text("05",
                    style: textTheme.headlineLarge?.copyWith(
                      color: HexColor('#5C5D72'),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            )*/
          ],
        );
      }),
    );

  }

}

class BarChartModel {
  String day;
  int financial;
  final charts.Color color;

  BarChartModel({
    required this.day,
    required this.financial,
    required this.color,
  });
}
