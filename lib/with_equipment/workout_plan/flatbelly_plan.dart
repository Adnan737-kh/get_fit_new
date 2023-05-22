import 'package:flutter/material.dart';
import 'plans_exercise.dart';
import 'package:get_fit_new/constants.dart';

class FlatBellyPlan extends StatelessWidget {
  static const String id = 'faltbelly_plan';

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
          'Flat Belly',
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            itemName: 'Bicycle Crunches',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlansExerciseScreen(
                            durationTimer: 250,
                            exerciseName: 'Bicycle Crunches',
                            gifSource: 'images/bicyclecrunches_op.gif',
                            content: kBicycleCrunch,
                            showAd: false,
                          )));
            },
          ),
          ListItem(
            itemName: 'Plank',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlansExerciseScreen(
                            durationTimer: 240,
                            exerciseName: 'Plank',
                            gifSource: 'images/plank_op.gif',
                            content: kPlank,
                            showAd: false,
                          )));
            },
          ),
          ListItem(
            itemName: 'Flutter Kicks',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlansExerciseScreen(
                            durationTimer: 300,
                            exerciseName: 'Flutter Kicks',
                            gifSource: 'images/flutterkicks_op.gif',
                            content: kFlutterKicks,
                            showAd: true,
                          )));
            },
          ),
          ListItem(
            itemName: 'Leg Raise',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlansExerciseScreen(
                            durationTimer: 270,
                            exerciseName: 'Leg Raise',
                            gifSource: 'images/legraise_op.gif',
                            content: kLegRaise,
                            showAd: false,
                          )));
            },
          ),
          ListItem(
            itemName: 'Crunches',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlansExerciseScreen(
                            durationTimer: 360,
                            exerciseName: 'Cruches',
                            gifSource: 'images/crunches_op.gif',
                            content: kCrunches,
                            showAd: false,
                          )));
            },
          ),
          ListItem(
            itemName: 'Side Plank',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlansExerciseScreen(
                            durationTimer: 240,
                            exerciseName: 'Side Plank',
                            gifSource: 'images/sideplank_op.gif',
                            content: kSidePlank,
                            showAd: true,
                          )));
            },
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;

  ListItem({required this.itemName,required this.onTap});

  @override
  Widget build(BuildContext context) {
    var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
    var sw900 = MediaQuery.of(context).size.width >= 890;
    var sw320to400 = MediaQuery.of(context).size.width > 320 &&
        MediaQuery.of(context).size.width < 400;
    var sw320to380 = MediaQuery.of(context).size.width > 320 &&
        MediaQuery.of(context).size.width < 380;
    var sw380to399 = MediaQuery.of(context).size.width > 380 &&
        MediaQuery.of(context).size.width < 399;
    var sw400to590 = MediaQuery.of(context).size.width > 400 &&
        MediaQuery.of(context).size.width < 599;

    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          margin: EdgeInsets.only(
            top: sw600 ? 15.0 : 10.0,
            right: 10.0,
            left: 10.0,
          ),
          height: sw600 ? 100.0 : sw900 ? 150.0 : 85.0,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/flatbelly_item.png'),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: Text(
              itemName,
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: sw600 ? 28.0 : sw900 ? 36 : 22.0,
                color: Colors.black,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
