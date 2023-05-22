import 'package:flutter/material.dart';
import 'slimdown_plan.dart';
import 'flatbelly_plan.dart';
import 'fullbody_plan.dart';

class WorkoutPlanScreen extends StatelessWidget {
  static const String id = 'workout_plan_screen';
  @override
  Widget build(BuildContext context) {

    var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
    var sw900 = MediaQuery.of(context).size.width >= 890;
    var sw320to400 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 400;
    var sw320to380 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 380;
    var sw380to399 = MediaQuery.of(context).size.width > 380 && MediaQuery.of(context).size.width < 399;
    var sw400to590 = MediaQuery.of(context).size.width > 400 && MediaQuery.of(context).size.width < 599;

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
          'Workout plans',
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: sw380to399 ? 10.0 : (sw400to590) && (MediaQuery.of(context).size.height > 790 && MediaQuery.of(context).size.height < 820) ? 50.0 : 25.0),
                child: WorkoutPlanItems(
                  imageSource: 'images/fullbody_card.png',
                  onTap: () {
                    Navigator.pushNamed(context, FullBodyPlan.id);
                  },
                ),
              ),
              WorkoutPlanItems(
                imageSource: 'images/slimdown_card.png',
                onTap: () {
                  Navigator.pushNamed(context, SlimDownPlan.id);
                },
              ),
              WorkoutPlanItems(
                imageSource: 'images/flatbelly_card.png',
                onTap: () {
                  Navigator.pushNamed(context, FlatBellyPlan.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WorkoutPlanItems extends StatelessWidget {
  final String imageSource;
  final VoidCallback onTap;

  WorkoutPlanItems({required this.imageSource, required this.onTap});

  @override
  Widget build(BuildContext context) {

    var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
    var sw900 = MediaQuery.of(context).size.width >= 890;
    var sw320to400 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 400;
    var sw320to380 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 380;
    var sw380to399 = MediaQuery.of(context).size.width > 380 && MediaQuery.of(context).size.width < 399;
    var sw400to590 = MediaQuery.of(context).size.width > 400 && MediaQuery.of(context).size.width < 599;

    if (sw600) {
      return GestureDetector(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 270.0,
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
      return GestureDetector(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 350.0,
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
    } else if (sw320to380) {
      return GestureDetector(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          width: MediaQuery.of(context).size.width - 30,
          height: 125.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageSource),
              fit: BoxFit.fill,
            ),
          ),
        ),
        onTap: onTap,
      );
    } else if (sw400to590) {
      return Center(
        child: GestureDetector(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
            width: MediaQuery.of(context).size.width - 20,
            height: 190.0,
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
    } else if (sw380to399){
      return GestureDetector(
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
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
          margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          width: MediaQuery.of(context).size.width - 30,
          height: 125.0,
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