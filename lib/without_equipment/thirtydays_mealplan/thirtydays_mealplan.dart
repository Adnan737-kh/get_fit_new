import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'thirtydays_individual_meal_plan.dart';
import 'package:get_fit_new/constants.dart';

class ThirtyDaysMealPlan extends StatelessWidget {
  static const String id = 'thirtydays_mealplan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: Container(
          width: 25.0,
          height: 25.0,
          child: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),

        ),
        title: Text('Meal Plan'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10),
                child: MealItem(
                  imageSource: 'images/fullbody_meal_orange.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ThirtyDaysIndiMealPlan(
                              imageSource: 'images/fullbody_meal_orange.png',
                              mealDescription: kFullBodyMealDescription,
                            ),
                      ),
                    );
                  },
                ),
              ),
              MealItem(
                imageSource: 'images/flatbelly_meal_orange.png',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirtyDaysIndiMealPlan(
                            imageSource: 'images/flatbelly_meal_orange.png',
                            mealDescription: kFlatBellyMealDescription,
                          ),
                    ),
                  );
                },
              ),
              MealItem(
                imageSource: 'images/slimdown_meal_orange.png',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirtyDaysIndiMealPlan(
                            imageSource: 'images/slimdown_meal_orange.png',
                            mealDescription: kSlimDownMealDescription,
                          ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MealItem extends StatelessWidget {
  final String imageSource;
  final VoidCallback onTap;

  MealItem({required this.imageSource, required this.onTap});

  @override
  Widget build(BuildContext context) {

    var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
    var sw900 = MediaQuery.of(context).size.width >= 890;
    var sw320to400 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 400;
    var sw320to380 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 380;
    var sw380to399 = MediaQuery.of(context).size.width > 380 && MediaQuery.of(context).size.width < 399;
    var sw400to590 = MediaQuery.of(context).size.width > 400 && MediaQuery.of(context).size.width < 599;

    if (sw600){
      return GestureDetector(
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 0),
            height: 275.0,
            width: MediaQuery.of(context).size.width - 40.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageSource),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        onTap: onTap,
      );
    } else if (sw900){
      return Center(
        child: GestureDetector(
          child: Container(
            margin: EdgeInsets.only(right: 5.0),
            height: 350.0,
            width: MediaQuery.of(context).size.width - 20.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageSource),
                fit: BoxFit.fill,
              ),
            ),
          ),
          onTap: onTap,
        ),
      );
    } else if (sw320to380) {
      return GestureDetector(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 150.0,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageSource),
              fit: BoxFit.fill,
            ),
          ),
        ),
        onTap: onTap,
      );
    } else if (sw400to590){
      return GestureDetector(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          width: MediaQuery.of(context).size.width - 15,
          height: 195.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageSource),
              fit: BoxFit.fill,
            ),
          ),
        ),
        onTap: onTap,
      );
    } else if (sw380to399) {
      return GestureDetector(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(right: 5.0),
            width: MediaQuery.of(context).size.width - 20,
            height: 165.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageSource),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        onTap: onTap,
      );
    } else {
      return GestureDetector(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 150.0,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageSource),
              fit: BoxFit.fill,
            ),
          ),
        ),
        onTap: onTap,
      );
    }
  }
}