import 'package:flutter/material.dart';
import 'package:get_fit_new/with_equipment/exercises/exercise.dart';
import 'package:get_fit_new/constants.dart';

class StomachListScreen extends StatelessWidget {
  static const String id = 'stomach_screen_list';

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
            'Stomach Exercises',
          ),
        ),
        body: ListView(
          children: <Widget>[
            CardItem(
              itemName: 'Crunches',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExerciseScreen(
                          imageSource: 'images/crunches_.png',
                          contentSource: kCrunches,
                          exerciseName: 'Crunches',
                          showAd: false,
                        ),
                  ),
                );
              },
            ),
            CardItem(
              itemName: 'Bicycle Crunches',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExerciseScreen(
                          imageSource: 'images/bicycle_crunches.png',
                          contentSource: kBicycleCrunch,
                          exerciseName: 'Bicycle Crunches',
                          showAd: false,
                        ),
                  ),
                );
              },
            ),
            CardItem(
              itemName: 'Toe Touches',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExerciseScreen(
                          imageSource: 'images/toe_touches.png',
                          contentSource: kToeTouches,
                          exerciseName: 'Toe Touches',
                          showAd: false,
                        ),
                  ),
                );
              },
            ),
            CardItem(
              itemName: 'Side Crunches',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExerciseScreen(
                          imageSource: 'images/side_plank.png',
                          contentSource: kSideCrunch,
                          exerciseName: 'Side Crunches',
                          showAd: true,
                        ),
                  ),
                );
              },
            ),
            CardItem(
              itemName: 'Full Sit-Ups',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExerciseScreen(
                          imageSource: 'images/full_situp.png',
                          contentSource: kFullSitup,
                          exerciseName: 'Full Sit-Ups',
                          showAd: false,
                        ),
                  ),
                );
              },
            ),
            CardItem(
              itemName: 'Knee Bends',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExerciseScreen(
                          imageSource: 'images/bent_knee.png',
                          contentSource: kKneeBends,
                          exerciseName: 'Knee Bends',
                          showAd: false,
                        ),
                  ),
                );
              },
            ),
            CardItem(
              itemName: 'Alternate Heel\nTouches',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExerciseScreen(
                          imageSource:
                              'images/alternate_heel_touching.png',
                          contentSource: kHeelTouches,
                          exerciseName: 'Alternate Heel Touches',
                          showAd: false,
                        ),
                  ),
                );
              },
            ),
            CardItem(
              itemName: 'Scissor Kicks',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExerciseScreen(
                          imageSource: 'images/scissors.png',
                          contentSource: kScissorKicks,
                          exerciseName: 'Scissor Kicks',
                          showAd: true,
                        ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 10.0,
            )
          ],
        ));
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
              fontSize: sw600 ? 28 : sw900 ? 36 :  22.0,
              fontFamily: 'Inter',
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

  ListItem({required this.itemName,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        height: 85.0,
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.redAccent,
        ),
        child: Center(
          child: Text(
            itemName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
