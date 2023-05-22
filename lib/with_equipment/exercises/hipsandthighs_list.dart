import 'package:flutter/material.dart';
import 'package:get_fit_new/with_equipment/exercises/exercise.dart';
import 'package:get_fit_new/constants.dart';

class HipsAndThighsListScreen extends StatelessWidget {
  static const String id = 'hipsandthighs_list_screen';

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
        title: Text('Hips and Thighs Exercises'),
      ),
      body: ListView(
        children: <Widget>[
          CardItem(
            itemName: 'Straight Leg\nKickBacks',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ExerciseScreen(
                        imageSource: 'images/straight_leg_kickbacks.png',
                        contentSource: kStraightLegKickback,
                        exerciseName: 'Straight Leg KickBacks',
                        showAd: false,
                      ),
                ),
              );
            },
          ),
          CardItem(
            itemName: 'Standing Hamstring\nCurls',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ExerciseScreen(
                        imageSource:
                            'images/standing_hamstring_curls.png',
                        contentSource: kStandingHamstringCurls,
                        exerciseName: 'Standing Hamstring Curls',
                        showAd: false,
                      ),
                ),
              );
            },
          ),
          CardItem(
            itemName: 'Straight Leg Lifts',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ExerciseScreen(
                        imageSource: 'images/leg_lift.png',
                        contentSource: kStraightLegLifts,
                        exerciseName: 'Straight Leg Lifts',
                        showAd: true,
                      ),
                ),
              );
            },
          ),
          CardItem(
            itemName: 'Lunges',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ExerciseScreen(
                        imageSource: 'images/lunges_.png',
                        exerciseName: 'Lunges',
                        contentSource: kLunges,
                        showAd: false,
                      ),
                ),
              );
            },
          ),
          CardItem(
            itemName: 'Fire Hydrants',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ExerciseScreen(
                        imageSource: 'images/fire_hydrant.png',
                        contentSource: kFireHydrants,
                        exerciseName: 'Fire Hydrants',
                        showAd: false,
                      ),
                ),
              );
            },
          ),
          CardItem(
            itemName: 'Bridge Lifts',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ExerciseScreen(
                        imageSource: 'images/bridge_lifts.png',
                        contentSource: kBridgeLifts,
                        exerciseName: 'Bridge Lifts',
                        showAd: false,
                      ),
                ),
              );
            },
          ),
          CardItem(
            itemName: 'Sumo Squats',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ExerciseScreen(
                    imageSource: 'images/squats_.png',
                    contentSource: kSumoSquats,
                    exerciseName: 'Sumo Squats',
                    showAd: true,
                  ),
                ),
              );
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

class CardItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;

  CardItem({required this.itemName, required this.onTap});

  @override
  Widget build(BuildContext context) {

    var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
    var sw900 = MediaQuery.of(context).size.width >= 890;
    var sw320to400 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 400;
    var sw320to380 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 380;
    var sw380to399 = MediaQuery.of(context).size.width > 380 && MediaQuery.of(context).size.width < 399;
    var sw400to590 = MediaQuery.of(context).size.width > 400 && MediaQuery.of(context).size.width < 599;
    var sh790to820 = MediaQuery.of(context).size.height > 790 && MediaQuery.of(context).size.height < 820;

    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(
          top: sw600 ? 15.0 : 10.0,
          right: sw600 ? 20 : sw900 ? 30 :  10.0 ,
          left: sw600 ? 20 : sw900 ? 30 : 10.0,
        ),
        width: double.maxFinite,
        height: sw600 ? 100.0 : sw900 ? 150 :  85.0,
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
              fontFamily: 'Inter',
              fontSize: sw600 ? 28 : sw900 ? 36 :  22.0,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}

class ListItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;

  ListItem({required this.itemName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.maxFinite,
        height: 85.0,
        margin: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color(0xFF3497DA),
        ),
        child: Center(
          child: Text(
            itemName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
