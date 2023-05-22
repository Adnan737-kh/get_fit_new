import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_fit_new/without_equipment/we_exercises/we_slimdown_exercises.dart';
import 'package:get_fit_new/without_equipment/we_exercises/we_dayoff.dart';
import 'package:get_fit_new/constants.dart';

import '../../customAdmob.dart';

class ThirtyDaysSlimDown extends StatelessWidget {
  static const String id = 'thirtydays_slimdown';
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
        title: Text('Slim Down'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
              imageSource: 'Day 1',
              onTap: () {
                showInterstatialAd();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WeSlimDownExerciseScreen(
                              durationTimer: 290,
                              day: 'Day 1',
                              gifSource: 'images/lunges.gif',
                              content: kSlimDownDay1,
                              squatsDuration: 40,
                              lungesDuration: 40,
                              plankDuration: 20,
                              donkeyKickBacksDuration: 40,
                              pushUpsDuration: 20,
                              gluteBridgeDuration: 40,
                            )));
              }),
          ListItem(
            imageSource: 'Day 2',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 280,
                            day: 'Day 2',
                            gifSource: 'images/lunges.gif',
                            content: kSlimDownDay2,
                            squatsDuration: 40,
                            lungesDuration: 40,
                            plankDuration: 15,
                            donkeyKickBacksDuration: 40,
                            pushUpsDuration: 15,
                            gluteBridgeDuration: 40,
                          )));
            },
          ),
          ListItem(
            imageSource: 'Day 1',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 310,
                            day: 'Day 3',
                            gifSource: 'images/lunges.gif',
                            content: kSlimDownDay3,
                            squatsDuration: 45,
                            lungesDuration: 45,
                            plankDuration: 20,
                            donkeyKickBacksDuration: 45,
                            pushUpsDuration: 20,
                            gluteBridgeDuration: 45,
                          )));
            },
          ),
          ListItem(
            imageSource: 'Day 4',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 330,
                            day: 'Day 4',
                            gifSource: 'images/lunges.gif',
                            content: kSlimDownDay4,
                            squatsDuration: 50,
                            lungesDuration: 50,
                            plankDuration: 20,
                            donkeyKickBacksDuration: 50,
                            pushUpsDuration: 20,
                            gluteBridgeDuration: 50,
                          )));
            },
          ),
          ListItem(
            imageSource: 'Day 5',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 330,
                            day: 'Day 5',
                            gifSource: 'images/lunges.gif',
                            content: kSlimDownDay5,
                            squatsDuration: 50,
                            lungesDuration: 50,
                            plankDuration: 20,
                            donkeyKickBacksDuration: 50,
                            pushUpsDuration: 20,
                            gluteBridgeDuration: 50,
                          )));
            },
          ),
          ListItem(
            imageSource: 'Day 6',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 370,
                            day: 'Day 6',
                            gifSource: 'images/lunges.gif',
                            content: kSlimDownDay6,
                            squatsDuration: 60,
                            lungesDuration: 60,
                            plankDuration: 20,
                            donkeyKickBacksDuration: 60,
                            pushUpsDuration: 20,
                            gluteBridgeDuration: 60,
                          )));
            },
          ),

          DayOffButton(),
          ListItem(
            imageSource: 'Day 8',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 380,
                            day: 'Day 8',
                            gifSource: 'images/lungs.gif',
                            content: kSlimDownDay8,
                            squatsDuration: 60,
                            lungesDuration: 60,
                            plankDuration: 25,
                            donkeyKickBacksDuration: 60,
                            pushUpsDuration: 25,
                            gluteBridgeDuration: 60,
                          )));
            },
          ),
          ListItem(
            imageSource: 'Day 9',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 400,
                            day: 'Day 9',
                            gifSource: 'images/lunges.gif',
                            content: kSlimDownDay9,
                            squatsDuration: 65,
                            lungesDuration: 65,
                            plankDuration: 25,
                            donkeyKickBacksDuration: 65,
                            pushUpsDuration: 25,
                            gluteBridgeDuration: 65,
                          )));
            },
          ),
          ListItem(
            imageSource: 'Day 10',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 420,
                            day: 'Day 10',
                            gifSource: 'images/lunges.gif',
                            content: kSlimDownDay10,
                            squatsDuration: 70,
                            lungesDuration: 70,
                            plankDuration: 25,
                            donkeyKickBacksDuration: 70,
                            pushUpsDuration: 25,
                            gluteBridgeDuration: 70,
                          )));
            },
          ),
          ListItem(
            imageSource: 'Day 11',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 420,
                            day: 'Day 11',
                            gifSource: 'images/lunges.gif',
                            content: kSlimDownDay11,
                            squatsDuration: 70,
                            lungesDuration: 70,
                            plankDuration: 25,
                            donkeyKickBacksDuration: 70,
                            pushUpsDuration: 25,
                            gluteBridgeDuration: 70,
                          )));
            },
          ),
          ListItem(
            imageSource: 'Day 12',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 470,
                            day: 'Day 12',
                            gifSource: 'images/lunges.gif',
                            content: kSlimDownDay12,
                            squatsDuration: 80,
                            lungesDuration: 80,
                            plankDuration: 30,
                            donkeyKickBacksDuration: 80,
                            pushUpsDuration: 30,
                            gluteBridgeDuration: 80,
                          )));
            },
          ),
          ListItem(
            imageSource: 'Day 13',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 470,
                            day: 'Day 13',
                            gifSource: 'images/lunges.gif',
                            content: kSlimDownDay13,
                            squatsDuration: 80,
                            lungesDuration: 80,
                            plankDuration: 30,
                            donkeyKickBacksDuration: 80,
                            pushUpsDuration: 30,
                            gluteBridgeDuration: 80,
                          )));
            },
          ),
          DayOffButton(),
          ListItem(
            imageSource: 'Day 14',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 490,
                            day: 'Day 15',
                            gifSource: 'images/lunges.gif',
                            content: kSlimDownDay15,
                            squatsDuration: 85,
                            lungesDuration: 85,
                            plankDuration: 30,
                            donkeyKickBacksDuration: 85,
                            pushUpsDuration: 30,
                            gluteBridgeDuration: 85,
                          )));
            },
          ),
          ListItem(
            imageSource: 'Day 16',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 510,
                            day: 'Day 16',
                            gifSource: 'images/lunges.gif',
                            content: kSlimDownDay16,
                            squatsDuration: 90,
                            lungesDuration: 90,
                            plankDuration: 30,
                            donkeyKickBacksDuration: 90,
                            pushUpsDuration: 30,
                            gluteBridgeDuration: 90,
                          )));
            },
          ),
          ListItem(
            imageSource: 'Day 17',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 540,
                            day: 'Day 17',
                            gifSource: 'images/lunges.gif',
                            content: kSlimDownDay17,
                            squatsDuration: 95,
                            lungesDuration: 95,
                            plankDuration: 35,
                            donkeyKickBacksDuration: 95,
                            pushUpsDuration: 35,
                            gluteBridgeDuration: 95,
                          )));
            },
          ),
          ListItem(
            imageSource: 'Day 18',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 560,
                            day: 'Day 18',
                            gifSource: 'images/lunges.gif',
                            content: kSlimDownDay18,
                            squatsDuration: 100,
                            lungesDuration: 100,
                            plankDuration: 35,
                            donkeyKickBacksDuration: 100,
                            pushUpsDuration: 35,
                            gluteBridgeDuration: 100,
                          )));
            },
          ),
          ListItem(
            imageSource: 'Day 19',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 580,
                            day: 'Day 19',
                            gifSource: 'images/lunges.gif',
                            content: kSlimDownDay19,
                            squatsDuration: 105,
                            lungesDuration: 105,
                            plankDuration: 35,
                            donkeyKickBacksDuration: 105,
                            pushUpsDuration: 35,
                            gluteBridgeDuration: 105,
                          )));
            },
          ),
          ListItem(
            imageSource: 'Day 20',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 580,
                            day: 'Day 20',
                            gifSource: 'images/lunges.gif',
                            content: kSlimDownDay20,
                            squatsDuration: 105,
                            lungesDuration: 105,
                            plankDuration: 35,
                            donkeyKickBacksDuration: 105,
                            pushUpsDuration: 35,
                            gluteBridgeDuration: 105,
                          )));
            },
          ),
          DayOffButton(),
          ListItem(
            imageSource: 'Day 22',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 610,
                            day: 'Day 22',
                            gifSource: 'images/lunges.gif',
                            content: kSlimDownDay22,
                            squatsDuration: 110,
                            lungesDuration: 110,
                            plankDuration: 40,
                            donkeyKickBacksDuration: 110,
                            pushUpsDuration: 40,
                            gluteBridgeDuration: 110,
                          )));
            },
          ),
          ListItem(
            imageSource: 'Day 23',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 630,
                            day: 'Day 23',
                            gifSource: 'images/lunges.gif',
                            content: kSlimDownDay23,
                            squatsDuration: 115,
                            lungesDuration: 115,
                            plankDuration: 40,
                            donkeyKickBacksDuration: 115,
                            pushUpsDuration: 40,
                            gluteBridgeDuration: 115,
                          )));
            },
          ),
          ListItem(
            imageSource: 'Day 24',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 650,
                            day: 'Day 24',
                            gifSource: 'images/lunges.gif',
                            content: kSlimDownDay24,
                            squatsDuration: 120,
                            lungesDuration: 120,
                            plankDuration: 40,
                            donkeyKickBacksDuration: 120,
                            pushUpsDuration: 40,
                            gluteBridgeDuration: 120,
                          )));
            },
          ),
          ListItem(
            imageSource: 'Day 25',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 680,
                            day: 'Day 25',
                            gifSource: 'images/lunges.gif',
                            content: kSlimDownDay25,
                            squatsDuration: 125,
                            lungesDuration: 125,
                            plankDuration: 45,
                            donkeyKickBacksDuration: 125,
                            pushUpsDuration: 45,
                            gluteBridgeDuration: 125,
                          )));
            },
          ),
          ListItem(
            imageSource: 'Day 26',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 680,
                            day: 'Day 26',
                            gifSource: 'images/lunges.gif',
                            content: kSlimDownDay26,
                            squatsDuration: 125,
                            lungesDuration: 125,
                            plankDuration: 45,
                            donkeyKickBacksDuration: 125,
                            pushUpsDuration: 45,
                            gluteBridgeDuration: 125,
                          )));
            },
          ),
          ListItem(
            imageSource: 'Day 27',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 700,
                            day: 'Day 27',
                            gifSource: 'images/lunges.gif',
                            content: kSlimDownDay27,
                            squatsDuration: 130,
                            lungesDuration: 130,
                            plankDuration: 45,
                            donkeyKickBacksDuration: 130,
                            pushUpsDuration: 45,
                            gluteBridgeDuration: 130,
                          )));
            },
          ),
          DayOffButton(),
          ListItem(
            imageSource: 'Day 29',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 720,
                            day: 'Day 28',
                            gifSource: 'images/lunges.gif',
                            content: kSlimDownDay29,
                            squatsDuration: 135,
                            lungesDuration: 135,
                            plankDuration: 45,
                            donkeyKickBacksDuration: 135,
                            pushUpsDuration: 45,
                            gluteBridgeDuration: 135,
                          )));
            },
          ),
          ListItem(
            imageSource: 'Day 30',
            onTap: () {
              showInterstatialAd();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WeSlimDownExerciseScreen(
                            durationTimer: 730,
                            day: 'Day 30',
                            gifSource: 'images/lunges.gif',
                            content: kSlimDownDay30,
                            squatsDuration: 135,
                            lungesDuration: 135,
                            plankDuration: 50,
                            donkeyKickBacksDuration: 135,
                            pushUpsDuration: 50,
                            gluteBridgeDuration: 135,
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
