import 'package:flutter/material.dart';
import 'package:get_fit_new/without_equipment/we_exercises/we_dayoff.dart';
import 'package:get_fit_new/without_equipment/we_exercises/we_fullbody_exercises.dart';
import 'package:get_fit_new/constants.dart';
import '../../customAdmob.dart';
import 'package:admob_flutter/admob_flutter.dart';

class ThirtyDaysFullBody extends StatelessWidget {
  static const String id = 'thirtydays_fullbody';
  customAdmob mycutomadmob = customAdmob();
  showInterstatialAd() {
    mycutomadmob.interstitialAd()
      ..load()
      ..show(
        // anchorType: AnchorType.bottom,
        // anchorOffset: 0.0,
        // horizontalCenterOffset: 0.0,
      );
  }
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
        title: Text('Full Body'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            imageSource: 'DAY 1',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(

                            durationTimer: 315,
                            day: 'Day 1',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay1,
                            jumpingJacksDuration: 30,
                            lungesDuration: 30,
                            mountainClimberDuration: 30,
                            highKneesRunningDuration: 30,
                            squatsDuration: 30,
                            flutterKicksDuration: 30,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 2',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 315,
                            day: 'Day 2',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay2,
                            jumpingJacksDuration: 30,
                            lungesDuration: 30,
                            mountainClimberDuration: 30,
                            highKneesRunningDuration: 30,
                            squatsDuration: 30,
                            flutterKicksDuration: 30,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 3',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 350,
                            day: 'Day 3',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay3,
                            jumpingJacksDuration: 35,
                            lungesDuration: 35,
                            mountainClimberDuration: 35,
                            highKneesRunningDuration: 35,
                            squatsDuration: 35,
                            flutterKicksDuration: 35,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 4',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 385,
                            day: 'Day 4',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay4,
                            jumpingJacksDuration: 40,
                            lungesDuration: 40,
                            mountainClimberDuration: 40,
                            highKneesRunningDuration: 40,
                            squatsDuration: 40,
                            flutterKicksDuration: 40,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 5',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 385,
                            day: 'Day 5',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay5,
                            jumpingJacksDuration: 40,
                            lungesDuration: 40,
                            mountainClimberDuration: 40,
                            highKneesRunningDuration: 40,
                            squatsDuration: 40,
                            flutterKicksDuration: 40,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 6',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 420,
                            day: 'Day 6',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay6,
                            jumpingJacksDuration: 45,
                            lungesDuration: 45,
                            mountainClimberDuration: 45,
                            highKneesRunningDuration: 45,
                            squatsDuration: 45,
                            flutterKicksDuration: 45,
                          )));
            },
          ),
          DayOffButton(),
          ListItem(
            imageSource: 'DAY 8',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 455,
                            day: 'Day 8',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay8,
                            jumpingJacksDuration: 50,
                            lungesDuration: 50,
                            mountainClimberDuration: 50,
                            highKneesRunningDuration: 50,
                            squatsDuration: 50,
                            flutterKicksDuration: 50,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 9',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 490,
                            day: 'Day 9',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay9,
                            jumpingJacksDuration: 55,
                            lungesDuration: 55,
                            mountainClimberDuration: 55,
                            highKneesRunningDuration: 55,
                            squatsDuration: 55,
                            flutterKicksDuration: 55,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 10',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 490,
                            day: 'Day 10',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay10,
                            jumpingJacksDuration: 55,
                            lungesDuration: 55,
                            mountainClimberDuration: 55,
                            highKneesRunningDuration: 55,
                            squatsDuration: 55,
                            flutterKicksDuration: 55,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 11',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 525,
                            day: 'Day 11',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay11,
                            jumpingJacksDuration: 60,
                            lungesDuration: 60,
                            mountainClimberDuration: 60,
                            highKneesRunningDuration: 60,
                            squatsDuration: 60,
                            flutterKicksDuration: 60,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 12',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 560,
                            day: 'Day 12',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay12,
                            jumpingJacksDuration: 65,
                            lungesDuration: 65,
                            mountainClimberDuration: 65,
                            highKneesRunningDuration: 65,
                            squatsDuration: 65,
                            flutterKicksDuration: 65,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 13',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 595,
                            day: 'Day 13',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay13,
                            jumpingJacksDuration: 70,
                            lungesDuration: 70,
                            mountainClimberDuration: 70,
                            highKneesRunningDuration: 70,
                            squatsDuration: 70,
                            flutterKicksDuration: 70,
                          )));
            },
          ),
          DayOffButton(),
          ListItem(
            imageSource: 'DAY 15',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 630,
                            day: 'Day 15',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay15,
                            jumpingJacksDuration: 75,
                            lungesDuration: 75,
                            mountainClimberDuration: 75,
                            highKneesRunningDuration: 75,
                            squatsDuration: 75,
                            flutterKicksDuration: 75,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 16',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 630,
                            day: 'Day 16',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay16,
                            jumpingJacksDuration: 75,
                            lungesDuration: 75,
                            mountainClimberDuration: 75,
                            highKneesRunningDuration: 75,
                            squatsDuration: 75,
                            flutterKicksDuration: 75,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 17',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 665,
                            day: 'Day 17',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay17,
                            jumpingJacksDuration: 80,
                            lungesDuration: 80,
                            mountainClimberDuration: 80,
                            highKneesRunningDuration: 80,
                            squatsDuration: 80,
                            flutterKicksDuration: 80,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 18',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 700,
                            day: 'Day 18',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay18,
                            jumpingJacksDuration: 85,
                            lungesDuration: 85,
                            mountainClimberDuration: 85,
                            highKneesRunningDuration: 85,
                            squatsDuration: 85,
                            flutterKicksDuration: 85,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 19',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 735,
                            day: 'Day 19',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay19,
                            jumpingJacksDuration: 90,
                            lungesDuration: 90,
                            mountainClimberDuration: 90,
                            highKneesRunningDuration: 90,
                            squatsDuration: 90,
                            flutterKicksDuration: 90,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 20',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 735,
                            day: 'Day 20',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay20,
                            jumpingJacksDuration: 90,
                            lungesDuration: 90,
                            mountainClimberDuration: 90,
                            highKneesRunningDuration: 90,
                            squatsDuration: 90,
                            flutterKicksDuration: 90,
                          )));
            },
          ),
          DayOffButton(),
          ListItem(
            imageSource: 'DAY 22',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 770,
                            day: 'Day 22',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay22,
                            jumpingJacksDuration: 95,
                            lungesDuration: 95,
                            mountainClimberDuration: 95,
                            highKneesRunningDuration: 95,
                            squatsDuration: 95,
                            flutterKicksDuration: 95,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 23',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 805,
                            day: 'Day 23',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay23,
                            jumpingJacksDuration: 100,
                            lungesDuration: 100,
                            mountainClimberDuration: 100,
                            highKneesRunningDuration: 100,
                            squatsDuration: 100,
                            flutterKicksDuration: 100,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 24',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 840,
                            day: 'Day 24',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay24,
                            jumpingJacksDuration: 105,
                            lungesDuration: 105,
                            mountainClimberDuration: 105,
                            highKneesRunningDuration: 105,
                            squatsDuration: 105,
                            flutterKicksDuration: 105,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 25',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 875,
                            day: 'Day 25',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay25,
                            jumpingJacksDuration: 110,
                            lungesDuration: 110,
                            mountainClimberDuration: 110,
                            highKneesRunningDuration: 110,
                            squatsDuration: 110,
                            flutterKicksDuration: 110,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 26',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 875,
                            day: 'Day 26',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay26,
                            jumpingJacksDuration: 110,
                            lungesDuration: 110,
                            mountainClimberDuration: 110,
                            highKneesRunningDuration: 110,
                            squatsDuration: 110,
                            flutterKicksDuration: 110,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 27',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 910,
                            day: 'Day 27',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay27,
                            jumpingJacksDuration: 115,
                            lungesDuration: 115,
                            mountainClimberDuration: 115,
                            highKneesRunningDuration: 115,
                            squatsDuration: 115,
                            flutterKicksDuration: 115,
                          )));
            },
          ),
         DayOffButton(),
          ListItem(
            imageSource: 'DAY 29',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 945,
                            day: 'Day 29',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay29,
                            jumpingJacksDuration: 120,
                            lungesDuration: 120,
                            mountainClimberDuration: 120,
                            highKneesRunningDuration: 120,
                            squatsDuration: 120,
                            flutterKicksDuration: 120,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 30',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeExerciseScreen(
                            durationTimer: 945,
                            day: 'Day 30',
                            gifSource: 'images/plank_op.gif',
                            content: kfullBodyDay30,
                            jumpingJacksDuration: 120,
                            lungesDuration: 120,
                            mountainClimberDuration: 120,
                            highKneesRunningDuration: 120,
                            squatsDuration: 120,
                            flutterKicksDuration: 120,
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
  final String imageSource;
  final VoidCallback onTap;

  ListItem({required this.imageSource, required this.onTap});

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
            margin: EdgeInsets.only(top: 5.0),
            height: 100.0,
            width: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageSource),
              ),
            ),
          ),
        ),
        onTap: onTap,
      );
    } else if (sw900) {
      return GestureDetector(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: 12.0),
            height: 120.0,
            width: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/flatbelly_item.png'),
              ),
            ),
            child: Text('DAYA 1'),
          ),
        ),
        onTap: onTap,
      );
    } else {
      return GestureDetector(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: 15.0),
            width: MediaQuery.of(context).size.width - 50.0,
            height: 65.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/flatbelly_item.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Text(
                imageSource,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: sw600
                      ? 28.0
                      : sw900
                      ? 36
                      : 22.0,
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
}

class DayOffButton extends StatelessWidget {
  const DayOffButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: Container(
          margin: EdgeInsets.only(top: 15.0),
          width: MediaQuery.of(context).size.width - 50.0,
          height: 65.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/day_off.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Text(
              'DAY OFF',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 22.0,
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, WeDayOffScreen.id);
      },
    );
  }
}
