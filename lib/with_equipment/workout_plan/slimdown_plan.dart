import 'package:flutter/material.dart';
import 'plans_exercise.dart';
import 'package:get_fit_new/constants.dart';

class SlimDownPlan extends StatelessWidget {
  static const String id = 'slimdown_plan';

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
          'Slim Down',
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            itemName: 'Squats',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlansExerciseScreen(
                            durationTimer: 360,
                            exerciseName: 'Squats',
                            gifSource: 'images/squats_op.gif',
                            content: kSquats,
                            showAd: false,
                          )));
            },
          ),
          ListItem(
            itemName: 'Lunges',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlansExerciseScreen(
                            durationTimer: 420,
                            exerciseName: 'Lunges',
                            gifSource: 'images/lunges.gif',
                            content: kLunges,
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
                          durationTimer: 300,
                          exerciseName: 'Plank',
                          gifSource: 'images/plank_op.gif',
                          content: kPlank,
                          showAd: true,
                        ),
                  ));
            },
          ),
          ListItem(
            itemName: 'Donkey Kickbacks',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlansExerciseScreen(
                            durationTimer: 420,
                            exerciseName: 'Donkey Kickbacks',
                            gifSource: 'images/donkeykickbacks.gif',
                            content: kDonkeyKickBacks,
                            showAd: false,
                          )));
            },
          ),
          ListItem(
            itemName: 'PushUps',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlansExerciseScreen(
                            durationTimer: 240,
                            exerciseName: 'PushUps',
                            gifSource: 'images/pushups_op.gif',
                            content: kPushUps,
                            showAd: false,
                          )));
            },
          ),
          ListItem(
            itemName: 'Glute Bridge',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlansExerciseScreen(
                            durationTimer: 300,
                            exerciseName: 'Glute Bridge',
                            gifSource: 'images/glutebridge_op.gif',
                            content: kGluteBridge,
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

  ListItem({required this.itemName, required this.onTap});

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
          width: double.maxFinite,
          height: sw600 ? 100.0 : sw900 ? 150.0 : 85.0,
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
                fontSize: sw600 ? 28 : sw900 ? 36 : 22.0,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
