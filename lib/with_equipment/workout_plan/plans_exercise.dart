import 'package:flutter/material.dart';
import 'package:get_fit_new/with_equipment/workout_plan/exercise_info.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_fit_new/ticker.dart';
import 'package:get_fit_new/bloc/timer_bloc.dart';
import 'package:get_fit_new/bloc/timer_state.dart';
import 'package:get_fit_new/bloc/timer_event.dart';
import 'package:get_fit_new/constants.dart';

// InterstitialAd interstitialAd;
//
// MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
//   childDirected: false, // or MobileAdGender.female, MobileAdGender.unknown
//   testDevices: <String>[], // Android emulators are considered test devices
// );

class PlansExerciseScreen extends StatefulWidget {
  static const String id = 'plans_exercise_screen';

  PlansExerciseScreen({
    required this.durationTimer,
    required this.exerciseName,
    required this.gifSource,
    required this.content,
    required this.showAd,
  });

  final int durationTimer;
  final String exerciseName;
  final String gifSource;
  final String content;
  final bool showAd;

  @override
  _PlansExerciseScreenState createState() => _PlansExerciseScreenState();
}

class _PlansExerciseScreenState extends State<PlansExerciseScreen> {
  @override
  Widget build(BuildContext context) {
    final TimerBloc _timerBloc =
    TimerBloc(ticker: Ticker(), durationTimer: widget.durationTimer);
    return Scaffold(
      body: BlocProvider(
        create:(context) => _timerBloc,
        child: Timer(
          exerciseName: widget.exerciseName,
          gifSource: widget.gifSource,
          content: widget.content,
          showAd: widget.showAd,
        ),
      ),
    );
  }

//  @override
//  void dispose() {
//    _timerBloc.dispose();
//    super.dispose();
//  }

// @override
//  void initState() {
//   super.initState();
//  }

}

class Timer extends StatelessWidget {
  final String exerciseName;
  final String gifSource;
  final String content;
  final bool showAd;

  Timer(
      {required this.exerciseName,
        required this.gifSource,
        required this.content,
        required this.showAd});

  @override
  Widget build(BuildContext context) {
    // if (showAd) {
    //   interstitialAd = myInterstitialAd()..load();
    // }
    final TimerBloc _timerBloc = BlocProvider.of<TimerBloc>(context);

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

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: Container(
          child: new IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                if (showAd) {
                  // if (interstitialAd.isLoaded() != null) {
                  //   interstitialAd..show();
                  //   Navigator.pop(context);
                  // }
                } else {
                  Navigator.pop(context);
                }
              }),

        ),
        title: Text(exerciseName),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: <Widget>[
          Container(
            child: IconButton(
              icon: Icon(
                Icons.info,
                size: 30.0,
              ),
              onPressed: () {
                final TimerState state = _timerBloc.state;
                if (state is Running || state is Paused) {
                  _timerBloc.add(Reset());
                }
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ExerciseInfo(
                          imageSource: gifSource,
                          content: content,
                        )));
                //print('Clicked');
              },
            ),

          ),
        ],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Image(
              image: AssetImage(
                gifSource,
              ),
              width: double.infinity,
              height: sw600 ? 420.0 : sw900 ? 500.0 : sw320to380 ? 300.0 : sw380to399 ? 250.0 : 350,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              exerciseName,
              style: TextStyle(
                fontSize: sw380to399 ? 32.0 : sw600 ? 42.0 : sw900 ? 50.0 : 35.0,
                color: Color(0xFF8300aa),
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Center(
              child: BlocBuilder(
                bloc: _timerBloc,
                builder: (context, TimerState state) {
                  final String minuteStr = ((state.duration / 60) % 60)
                      .floor()
                      .toString()
                      .padLeft(2, '0');
                  final String secondStr =
                  (state.duration % 60).floor().toString().padLeft(2, '0');
                  return Text(
                    '$minuteStr:$secondStr',
                    style: sw600 ? TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF8300aa),
                        fontFamily: 'Lato'
                    ) : sw900 ? TextStyle(
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF8300aa),
                        fontFamily: 'Lato'
                    ) : kTimerTextStyle,
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: sw600 ? 10.0 : sw900 ? 20 : 0,
          ),
          BlocBuilder(
            buildWhen: (previousState, currentState) =>
            currentState.runtimeType != previousState.runtimeType,
            bloc: _timerBloc,
            builder: (context, state) => Actions(),
          ),
        ],
      ),
    );
  }
}

class Actions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: _mapStatesToActionButtons(
        timerBloc: BlocProvider.of<TimerBloc>(context),
        context: context,
      ),
    );
  }

  List<Widget> _mapStatesToActionButtons({
    required TimerBloc timerBloc,
    required BuildContext context,
  }) {
    final TimerState state = timerBloc.state;
    if (state is Ready) {
      var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
      var sw900 = MediaQuery.of(context).size.width >= 890;

      return [
        GestureDetector(
            child: CircleAvatar(
              radius: sw600 ? 55 : sw900 ? 65.0 : 45.0,
              backgroundImage: AssetImage("images/play_button_purple.png"),
              backgroundColor: Colors.white,
            ),
            onTap: () {
              timerBloc.add(Start(duration: state.duration));
            }),
      ];
    }
    if (state is Running) {
      var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
      var sw900 = MediaQuery.of(context).size.width >= 890;
      return [
        GestureDetector(
          child: CircleAvatar(
            radius: sw600 ? 55 : sw900 ? 60.0 : 45.0,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("images/pause_button_purple.png"),
          ),
          onTap: () {
            timerBloc.add(Pause());
          },
        ),
        GestureDetector(
          child: CircleAvatar(
            radius: sw600 ? 55 : sw900 ? 60.0 : 45.0,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("images/reset_button_purple.png"),
          ),
          onTap: () => timerBloc.add(Reset()),
        )
      ];
    }
    if (state is Paused) {
      var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
      var sw900 = MediaQuery.of(context).size.width >= 890;
      return [
        GestureDetector(
          child: CircleAvatar(
            radius: sw600 ? 55 : sw900 ? 60.0 : 45.0,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("images/play_button_purple.png"),
          ),
          onTap: () => timerBloc.add(Resume()),
        ),
        GestureDetector(
          child: CircleAvatar(
            radius: sw600 ? 55 : sw900 ? 60.0 : 45.0,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("images/reset_button_purple.png"),
          ),
          onTap: () => timerBloc.add(Reset()),
        )
      ];
    }
    if (state is Finished) {
      var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
      var sw900 = MediaQuery.of(context).size.width >= 890;
      print('Finished');
      return [
        GestureDetector(
          child: CircleAvatar(
            radius: sw600 ? 55 : sw900 ? 60.0 : 45.0,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("images/reset_button_purple.png"),
          ),
          onTap: () => timerBloc.add(Reset()),
        ),
      ];
    }
    return [];
  }
}

// InterstitialAd myInterstitialAd() {
//   return InterstitialAd(
//       adUnitId: kInterstitialAdId,
//       targetingInfo: targetingInfo,
//       listener: (MobileAdEvent event) {
//         if (event == MobileAdEvent.failedToLoad) {
//           interstitialAd..load();
//         } else if (event == MobileAdEvent.closed) {
//           interstitialAd = myInterstitialAd()..load();
//         } else if (event == MobileAdEvent.loaded){
//           print('PlansExercise: Ad is loaded');
//         }
//       });
// }
