
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rcredit_apps/core/theme/color_scheme.dart';

class TransactionHistoryScreen extends StatefulWidget {
  const TransactionHistoryScreen({Key? key}) : super(key: key);

  @override
  State<TransactionHistoryScreen> createState() => _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends State<TransactionHistoryScreen> {

  List images = [
    "assets/images/pay1.png",
    "assets/images/pay2.png",
    "assets/images/pay1.png",
    "assets/images/pay2.png"
  ];


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
                    "লেনদেন ইতিহাস",
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
            height: 16,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 16,top: 16,right: 16),
            child: Text(
              "সর্বমোট লেনদেনদের পরিমান",
              style: textTheme.titleMedium?.copyWith(
                  color: lightColorScheme.secondary,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 80,
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 16),
              color: lightColorScheme.surfaceTint,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                //set border radius more than 50% of height and width to make circle
              ),
              child: Center(
                  child: Text(
                      "৪০,০০০/- টাকা",
                      style: textTheme.bodyLarge?.copyWith(fontSize: 14,color: Colors.white))),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 16,top: 32,right: 16),
            child: Text(
              "লেনদেনদের ইতিহাস",
              style: textTheme.titleMedium?.copyWith(
                  color: lightColorScheme.secondary,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),

          Expanded(child: ListView.builder(
              itemCount: images.length,
              itemBuilder: (context,index){

            return Card(
              color: HexColor('#FCFCFF'),
              elevation: 0.3,
              margin: new EdgeInsets.symmetric(horizontal: 10.0,
                  vertical: 10.0),
              child: ListTile(
                contentPadding:
                EdgeInsets.symmetric(horizontal: 10.0,
                    vertical: 10.0),
                //leading: Icon(Icons.account_circle),
                title: Text(
                  "রানার লিমিটেড",
                  maxLines: 2,
                  style: textTheme.headline6?.copyWith(
                    color: lightColorScheme.secondary, fontSize: 14,fontWeight: FontWeight.bold,),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    "দুপুর ১২ঃ২০",
                    style: textTheme.headline4?.copyWith(
                      color: lightColorScheme.outline, fontSize: 14,fontWeight: FontWeight.bold,),
                  ),
                ),//
                leading: Image.asset("${images[index]}",fit: BoxFit.fill, width: 32,),
                selectedColor: colorScheme.onSurfaceVariant,

                trailing:  Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    "১০,০০০/-",
                    style: textTheme.headline4?.copyWith(
                        color: lightColorScheme.secondary, fontSize: 14,fontWeight: FontWeight.bold,),
                  ),
                ),
              ),
            );
          }))

        ],
      ),
    ));
  }
}
