import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_fit_new/without_equipment/we_exercises/we_dayoff.dart';
import 'package:get_fit_new/without_equipment/we_exercises/we_flatbelly_exercises.dart';
import 'package:get_fit_new/constants.dart';

import '../../customAdmob.dart';

class ThirtyDaysFlatBelly extends StatelessWidget {
  static const String id = 'thirtydays_flatbelly';
  customAdmob mycutomadmob = customAdmob();
  showInterstatialAd() {
    mycutomadmob.interstitialAd()
      ..load()
      ..show(
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
        title: Text('Flat Belly'),
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
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 240,
                            day: 'Day 1',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay1,
                            bicycleCrunchDuration: 30,
                            plankDuration: 15,
                            flutterKicksDuration: 30,
                            crunchesDuration: 30,
                            legRaiseDuration: 30,
                            sidePlankDuration: 15,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 2',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 230,
                            day: 'Day 2',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay2,
                            bicycleCrunchDuration: 30,
                            plankDuration: 10,
                            flutterKicksDuration: 30,
                            crunchesDuration: 30,
                            legRaiseDuration: 30,
                            sidePlankDuration: 10,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 3',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 240,
                            day: 'Day 3',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay3,
                            bicycleCrunchDuration: 30,
                            plankDuration: 15,
                            flutterKicksDuration: 30,
                            crunchesDuration: 30,
                            legRaiseDuration: 30,
                            sidePlankDuration: 15,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 4',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 260,
                            day: 'Day 4',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay4,
                            bicycleCrunchDuration: 35,
                            plankDuration: 15,
                            flutterKicksDuration: 35,
                            crunchesDuration: 35,
                            legRaiseDuration: 35,
                            sidePlankDuration: 15,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 5',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 260,
                            day: 'Day 5',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay5,
                            bicycleCrunchDuration: 35,
                            plankDuration: 15,
                            flutterKicksDuration: 35,
                            crunchesDuration: 35,
                            legRaiseDuration: 35,
                            sidePlankDuration: 15,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 6',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 280,
                            day: 'Day 6',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay6,
                            bicycleCrunchDuration: 40,
                            plankDuration: 15,
                            flutterKicksDuration: 40,
                            crunchesDuration: 40,
                            legRaiseDuration: 40,
                            sidePlankDuration: 15,
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
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 290,
                            day: 'Day 8',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay8,
                            bicycleCrunchDuration: 40,
                            plankDuration: 20,
                            flutterKicksDuration: 40,
                            crunchesDuration: 40,
                            legRaiseDuration: 40,
                            sidePlankDuration: 20,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 9',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 310,
                            day: 'Day 9',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay9,
                            bicycleCrunchDuration: 45,
                            plankDuration: 20,
                            flutterKicksDuration: 45,
                            crunchesDuration: 45,
                            legRaiseDuration: 45,
                            sidePlankDuration: 20,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 10',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 310,
                            day: 'Day 10',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay10,
                            bicycleCrunchDuration: 45,
                            plankDuration: 20,
                            flutterKicksDuration: 45,
                            crunchesDuration: 45,
                            legRaiseDuration: 45,
                            sidePlankDuration: 20,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 11',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 330,
                            day: 'Day 11',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay11,
                            bicycleCrunchDuration: 50,
                            plankDuration: 20,
                            flutterKicksDuration: 50,
                            crunchesDuration: 50,
                            legRaiseDuration: 50,
                            sidePlankDuration: 20,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 12',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 360,
                            day: 'Day 12',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay12,
                            bicycleCrunchDuration: 55,
                            plankDuration: 25,
                            flutterKicksDuration: 55,
                            crunchesDuration: 55,
                            legRaiseDuration: 55,
                            sidePlankDuration: 25,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 13',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 360,
                            day: 'Day 13',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay13,
                            bicycleCrunchDuration: 55,
                            plankDuration: 25,
                            flutterKicksDuration: 55,
                            crunchesDuration: 55,
                            legRaiseDuration: 55,
                            sidePlankDuration: 25,
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
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 360,
                            day: 'Day 15',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay15,
                            bicycleCrunchDuration: 55,
                            plankDuration: 25,
                            flutterKicksDuration: 55,
                            crunchesDuration: 55,
                            legRaiseDuration: 55,
                            sidePlankDuration: 25,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 16',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 380,
                            day: 'Day 16',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay16,
                            bicycleCrunchDuration: 60,
                            plankDuration: 25,
                            flutterKicksDuration: 60,
                            crunchesDuration: 60,
                            legRaiseDuration: 60,
                            sidePlankDuration: 25,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 17',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 390,
                            day: 'Day 17',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay17,
                            bicycleCrunchDuration: 60,
                            plankDuration: 30,
                            flutterKicksDuration: 60,
                            crunchesDuration: 60,
                            legRaiseDuration: 60,
                            sidePlankDuration: 30,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 18',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 410,
                            day: 'Day 18',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay18,
                            bicycleCrunchDuration: 65,
                            plankDuration: 30,
                            flutterKicksDuration: 65,
                            crunchesDuration: 65,
                            legRaiseDuration: 65,
                            sidePlankDuration: 30,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 19',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 430,
                            day: 'Day 19',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay19,
                            bicycleCrunchDuration: 70,
                            plankDuration: 30,
                            flutterKicksDuration: 70,
                            crunchesDuration: 70,
                            legRaiseDuration: 70,
                            sidePlankDuration: 30,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 20',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 430,
                            day: 'Day 20',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay20,
                            bicycleCrunchDuration: 70,
                            plankDuration: 30,
                            flutterKicksDuration: 70,
                            crunchesDuration: 70,
                            legRaiseDuration: 70,
                            sidePlankDuration: 30,
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
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 440,
                            day: 'Day 22',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay22,
                            bicycleCrunchDuration: 70,
                            plankDuration: 35,
                            flutterKicksDuration: 70,
                            crunchesDuration: 70,
                            legRaiseDuration: 70,
                            sidePlankDuration: 35,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 23',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 460,
                            day: 'Day 23',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay23,
                            bicycleCrunchDuration: 75,
                            plankDuration: 35,
                            flutterKicksDuration: 75,
                            crunchesDuration: 75,
                            legRaiseDuration: 75,
                            sidePlankDuration: 35,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 24',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 480,
                            day: 'Day 24',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay24,
                            bicycleCrunchDuration: 80,
                            plankDuration: 35,
                            flutterKicksDuration: 80,
                            crunchesDuration: 80,
                            legRaiseDuration: 80,
                            sidePlankDuration: 35,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 25',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 490,
                            day: 'Day 25',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay25,
                            bicycleCrunchDuration: 80,
                            plankDuration: 40,
                            flutterKicksDuration: 80,
                            crunchesDuration: 80,
                            legRaiseDuration: 80,
                            sidePlankDuration: 40,
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
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 510,
                            day: 'Day 26',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay26,
                            bicycleCrunchDuration: 85,
                            plankDuration: 40,
                            flutterKicksDuration: 85,
                            crunchesDuration: 85,
                            legRaiseDuration: 85,
                            sidePlankDuration: 40,
                          )));
            },
          ),
          ListItem(
            imageSource: 'DAY 27',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 510,
                            day: 'Day 27',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay27,
                            bicycleCrunchDuration: 85,
                            plankDuration: 40,
                            flutterKicksDuration: 85,
                            crunchesDuration: 85,
                            legRaiseDuration: 85,
                            sidePlankDuration: 40,
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
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 510,
                            day: 'Day 29',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay29,
                            bicycleCrunchDuration: 85,
                            plankDuration: 40,
                            flutterKicksDuration: 85,
                            crunchesDuration: 85,
                            legRaiseDuration: 85,
                            sidePlankDuration: 40,
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
                      builder: (context) => WeFlatBellyExerciseScreen(
                            durationTimer: 540,
                            day: 'Day 30',
                            gifSource: 'images/lunges.gif',
                            content: kFlatBellyDay30,
                            bicycleCrunchDuration: 90,
                            plankDuration: 45,
                            flutterKicksDuration: 90,
                            crunchesDuration: 90,
                            legRaiseDuration: 90,
                            sidePlankDuration: 45,
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
