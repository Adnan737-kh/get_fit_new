import 'package:flutter/material.dart';
import 'thirty_days_plans/thirtydays_slimdown.dart';
import 'thirty_days_plans/thirtydays_fullbody.dart';
import 'thirty_days_plans/thirtydays_flatbelly.dart';
import 'thirtydays_mealplan/thirtydays_mealplan.dart';

class WithoutEquipmentScreen extends StatelessWidget {
  static const String id = 'without_equipment_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Container(
          height: 25.0,
          width: 25.0,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () => Navigator.pop(context),
          ),

        ),
        title: Text(
          'Without Equipment',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            WEMenuItems(
              imageSource: 'images/we_slimdown.png',
              onTap: () {
                Navigator.pushNamed(context, ThirtyDaysSlimDown.id);
              },
            ),
            SizedBox(
              height: 1,
            ),
            WEMenuItems(
              imageSource: 'images/we_flatbelly.png',
              onTap: () {
                Navigator.pushNamed(context, ThirtyDaysFlatBelly.id);
              },
            ),
            SizedBox(
              height: 1,
            ),
            WEMenuItems(
              imageSource: 'images/we_fullbody.png',
              onTap: () {
                Navigator.pushNamed(context, ThirtyDaysFullBody.id);
              },
            ),
            WEMenuItems(
              imageSource: 'images/we_mealplanbtn.png',
              onTap: () {
                Navigator.pushNamed(context, ThirtyDaysMealPlan.id);
              },
            ),
//                    GestureDetector(
//                      child: Container(
//                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
//                        height: MediaQuery.of(context).size.width > 600 ? 105.0 : MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 380 ? 88.0 : MediaQuery.of(context).size.width > 400 && MediaQuery.of(context).size.width < 590 ? 103 : 98.0,
//                        width: MediaQuery.of(context).size.width > 600 ? MediaQuery.of(context).size.width - 200 : MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 380 ? MediaQuery.of(context).size.width - 60.0 : MediaQuery.of(context).size.width > 400 && MediaQuery.of(context).size.width < 590 ? MediaQuery.of(context).size.width - 60.0 : MediaQuery.of(context).size.width - 60.0,
//                        decoration: BoxDecoration(
//                          image: DecorationImage(
//                              image: AssetImage('images/we_mealplanbtn.png'),
//                              fit: BoxFit.fill,),
//                        ),
//                      ),
//                      onTap: () {
//                        Navigator.pushNamed(context, ThirtyDaysMealPlan.id);
//                      },
//                    ),
          ],
        ),
      ),
    );
  }
}

class WEMenuItems extends StatelessWidget {
  final String imageSource;
  final VoidCallback onTap;

  WEMenuItems({required this.imageSource, required this.onTap});

  @override
  Widget build(BuildContext context) {
    var sw600 = MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width < 880;
    var sw900 = MediaQuery.of(context).size.width >= 890;
    var sw320to400 = MediaQuery.of(context).size.width > 320 &&
        MediaQuery.of(context).size.width < 400;
    var sw320to380 = MediaQuery.of(context).size.width > 320 &&
        MediaQuery.of(context).size.width < 380;
    var sw380to399 = MediaQuery.of(context).size.width > 380 &&
        MediaQuery.of(context).size.width < 399;
    var sw400to590 = MediaQuery.of(context).size.width > 400 &&
        MediaQuery.of(context).size.width < 599;

    if (sw600) {
      return GestureDetector(
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            width: MediaQuery.of(context).size.width - 40.0,
            height: 240.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imageSource), fit: BoxFit.fill),
            ),
          ),
        ),
        onTap: onTap,
      );
    } else if (sw900) {
      return GestureDetector(
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            width: MediaQuery.of(context).size.width - 60.0,
            height: 320.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imageSource), fit: BoxFit.fill),
            ),
          ),
        ),
        onTap: onTap,
      );
    } else if (sw320to380) {
      return GestureDetector(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          height: 80.0,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imageSource), fit: BoxFit.fill),
          ),
        ),
        onTap: onTap,
      );
    } else if (sw400to590) {
      return GestureDetector(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          height: 185.0,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imageSource), fit: BoxFit.fill),
          ),
        ),
        onTap: onTap,
      );
    } else if (sw380to399) {
      return GestureDetector(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          height: 155.0,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imageSource), fit: BoxFit.fill),
          ),
        ),
        onTap: onTap,
      );
    } else {
      return GestureDetector(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          height: 80.0,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imageSource), fit: BoxFit.fill),
          ),
        ),
        onTap: onTap,
      );
    }
  }
}
