import 'package:flutter/material.dart';
import 'individual_meal_plan.dart';
import 'package:get_fit_new/constants.dart';

class MealPlanScreen extends StatelessWidget {
  static const String id = 'meal_plan_screen';

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
          'Meal Plan',
        ),
      ),
      body: Center(
        child: SingleChildScrollView(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(
                height:MediaQuery.of(context).size.height*0.09523809523,
              ),
              MealItems(
                  imageSource: 'images/slimdown_meal.png',
                  imageSourceIndi: 'images/slimdown_meal.png',
                  mealDescriptionSource: kSlimDownMealDescription,
                ),

              // SizedBox(
              //   height:MediaQuery.of(context).size.height*0.05418719211,
              // ),
              MealItems(
                imageSource: 'images/fullbody_meal.png',
                imageSourceIndi: 'images/fullbody_meal.png',
                mealDescriptionSource: kFullBodyMealDescription,
              ),
              // SizedBox(
              //   height:MediaQuery.of(context).size.height*0.05418719211,
              // ),
              MealItems(
                imageSource: 'images/flatbelly_meal.png',
                imageSourceIndi: 'images/flatbelly_meal.png',
                mealDescriptionSource: kFlatBellyMealDescription,
              ),
              // SizedBox(
              //   height:MediaQuery.of(context).size.height*0.05418719211,
              // ),
              SizedBox(height: 100.0)
            ],
          ),
        ),
      ),
    );
  }
}

class MealItems extends StatelessWidget {
  final String imageSource;
  final String imageSourceIndi;
  final String mealDescriptionSource;

  MealItems(
      {required this.imageSource,
      required this.imageSourceIndi,
      required this.mealDescriptionSource});

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
      return Center(
        child: GestureDetector(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              width: MediaQuery.of(context).size.width - 40.0,
              height: 270.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageSource),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => IndividualMealPlanScreen(
                    imageSource: imageSourceIndi,
                    mealDescriptionSource: mealDescriptionSource,
                  ),
                ),
              );
            }),
      );
    } else if (sw900) {
      return Center(
        child: GestureDetector(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              width: MediaQuery.of(context).size.width - 40.0,
              height: 350.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageSource),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => IndividualMealPlanScreen(
                    imageSource: imageSourceIndi,
                    mealDescriptionSource: mealDescriptionSource,
                  ),
                ),
              );
            }),
      );
    } else if (sw320to380) {
      return GestureDetector(
          child: Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 0.0),
              width: MediaQuery.of(context).size.width - 20,
              height: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageSource),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => IndividualMealPlanScreen(
                  imageSource: imageSourceIndi,
                  mealDescriptionSource: mealDescriptionSource,
                ),
              ),
            );
          });
    } else if (sw400to590) {
      return GestureDetector(
          child: Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 0.0),
              width: MediaQuery.of(context).size.width - 20,
              height: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageSource),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => IndividualMealPlanScreen(
                  imageSource: imageSourceIndi,
                  mealDescriptionSource: mealDescriptionSource,
                ),
              ),
            );
          });
    } else if (sw380to399) {
      return GestureDetector(
          child: Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 0.0),
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
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => IndividualMealPlanScreen(
                  imageSource: imageSourceIndi,
                  mealDescriptionSource: mealDescriptionSource,
                ),
              ),
            );
          });
    } else {
      return GestureDetector(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            width: double.maxFinite,
            height: 150.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageSource),
                fit: BoxFit.fill,
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => IndividualMealPlanScreen(
                  imageSource: imageSourceIndi,
                  mealDescriptionSource: mealDescriptionSource,
                ),
              ),
            );
          });
    }
  }
}
