import 'package:flutter/material.dart';
import 'plans_exercise.dart';
import 'package:get_fit_new/constants.dart';

class FullBodyPlan extends StatelessWidget {
  static const String id = 'fullbody_plan';

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
          'Full body Workout',
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            itemName: 'Jumping Jacks',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlansExerciseScreen(
                        durationTimer: 320,
                        gifSource: 'images/jumpingjacks_op.gif',
                        exerciseName: 'Jumping Jacks',
                        content: kJumpingJacks,
                        showAd: false,
                      ),
                ),
              );
            },
          ),
          ListItem(
            itemName: 'Lunges',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlansExerciseScreen(
                            durationTimer: 300,
                            gifSource: 'images/lunges.gif',
                            exerciseName: 'Lunges',
                            content: kLunges,
                            showAd: false,
                          )));
            },
          ),
          ListItem(
            itemName: 'Mountain Climber',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlansExerciseScreen(
                            durationTimer: 350,
                            exerciseName: 'Mountain Climber',
                            gifSource: 'images/mountainclimber_op.gif',
                            content: kMountainClimber,
                            showAd: true,
                          )));
            },
          ),
          ListItem(
            itemName: 'High Knees Running',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlansExerciseScreen(
                            durationTimer: 380,
                            exerciseName: 'High Kness Running',
                            gifSource: 'images/highkneesrunning_op.gif',
                            content: kHighKneesRunning,
                            showAd: false,
                          )));
            },
          ),
          ListItem(
            itemName: 'Squats',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlansExerciseScreen(
                            durationTimer: 280,
                            exerciseName: 'Squats',
                            gifSource: 'images/squats_op.gif',
                            content: kSquats,
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
    var sw320to400 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 400;
    var sw320to380 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 380;
    var sw380to399 = MediaQuery.of(context).size.width > 380 && MediaQuery.of(context).size.width < 399;
    var sw400to590 = MediaQuery.of(context).size.width > 400 && MediaQuery.of(context).size.width < 599;

    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          height: sw600 ? 100.0 : sw900 ? 150 : 85.0,
          width: double.maxFinite,
          margin: EdgeInsets.only(
            top: sw600 ? 15.0 : 10.0,
            left: 10.0,
            right: 10.0,
          ),
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
                fontSize: sw600 ? 28.0 : sw900 ? 36 : 22.0,
                fontFamily: 'Inter',
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
