import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_fit_new/ticker.dart';
import 'package:get_fit_new/bloc/timer_bloc.dart';
import 'package:get_fit_new/bloc/timer_state.dart';
import 'package:get_fit_new/bloc/timer_event.dart';
import 'package:get_fit_new/constants.dart';
import 'package:admob_flutter/admob_flutter.dart';

late AdmobInterstitial interstitialAd;

// MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
//   childDirected: false, // or MobileAdGender.female, MobileAdGender.unknown
//   testDevices: <String>[], // Android emulators are considered test devices
// );

class WeExerciseInfoScreen extends StatefulWidget {
  static const String id = 'we_exercise_info_screen';

  WeExerciseInfoScreen(
      {required this.durationTimer,
      required this.exerciseName,
      required this.gifSource,
      required this.content,
      required this.showAd});

  final int durationTimer;
  final String exerciseName;
  final String gifSource;
  final String content;
  final bool showAd;

  @override
  _WeExerciseInfoScreenState createState() => _WeExerciseInfoScreenState();
}

class _WeExerciseInfoScreenState extends State<WeExerciseInfoScreen> {
  @override
  Widget build(BuildContext context) {
    final TimerBloc _timerBloc =
        TimerBloc(ticker: Ticker(), durationTimer: widget.durationTimer);
    return Scaffold(
      body: BlocProvider(
        create: (context) => _timerBloc,
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
}

class Timer extends StatelessWidget {
  final String exerciseName;
  final String gifSource;
  final String content;
  final bool showAd;

  Timer({
    required this.exerciseName,
    required this.gifSource,
    required this.content,
    required this.showAd,
  });

  @override
  Widget build(BuildContext context) {
    if (showAd) {
      interstitialAd = myInterstitialAd()..load();
    }
    final TimerBloc _timerBloc = BlocProvider.of<TimerBloc>(context);

    var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
    var sw900 = MediaQuery.of(context).size.width >= 890;

    var sw320to400 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 400;
    var sw320to380 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 380;
    var sw380to399 = MediaQuery.of(context).size.width > 380 && MediaQuery.of(context).size.width < 399;
    var sw400to590 = MediaQuery.of(context).size.width > 400 && MediaQuery.of(context).size.width < 599;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: Container(
          width: 25,
          height: 25,
          child: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              if (showAd) {
                if (interstitialAd.isLoaded != null) {
                  interstitialAd..show();
                  Navigator.pop(context);
                }
              } else {
                Navigator.pop(context);
              }
            },
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(-0.5, -4.0),
                end: Alignment(1.0, 4.0),
                colors: [
                  Color(0xFFFF4E35),
                  Color(0xFFFF4E35),
                ]),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFbf3a28),
                offset: Offset(5.0, 5.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              ),
              BoxShadow(
                color: Color(0xFFbf3a28),
                offset: Offset(-5.0, -5.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              )
            ],
          ),
        ),
        title: Text(exerciseName),
        backgroundColor: Color(0xFFFF4E35),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: sw900 ? 10 : 0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Image(
              image: AssetImage(
                gifSource,
              ),
              width: double.infinity,
              height: sw600 ? 260 : sw380to399 ? 180.0 : sw900 ? 320 : 200,
            ),
          ),
          SizedBox(
            height: sw900 ? 15 : 0,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Center(
              child: BlocBuilder(
                bloc: _timerBloc,
                builder: (context, state) {
                  final String minuteStr = ((60) % 60)
                      .floor()
                      .toString()
                      .padLeft(2, '0');
                  final String secondStr =
                      (60).floor().toString().padLeft(2, '0');
                  return Text(
                    '$minuteStr:$secondStr',
                    style: sw600 ? TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFF4E35),
                        fontFamily: 'Lato'
                    ) : sw900 ? TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFF4E35),
                        fontFamily: 'Lato'
                    ) :  kTimerOrangeTextStyle,
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: sw900 ? 10 : 0,
          ),
          BlocBuilder(
            buildWhen: (previousState, currentState) =>
                currentState.runtimeType != previousState.runtimeType,
            bloc: _timerBloc,
            builder: (context, state) => Actions(),
          ),
          SizedBox(
            height: sw900 ? 10 : 0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: SizedBox(
              height: sw600 ? 5.0 : sw900 ? 6 : 3.0,
              width: MediaQuery.of(context).size.width - 40.0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Color(0xFFFF4E35),
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 15.0, right: 10.0, left: 10.0, bottom: 15.0),
                child: Text(
                  content,
                  style: TextStyle(
                    fontSize: sw600 ? 28.0 : sw900 ? 36 : 20,
                    fontFamily: 'Lato',
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
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
            radius: sw600 ? 50.0 : sw900 ? 60.0 : 40.0,
            backgroundImage: AssetImage("images/play_button_orange.png"),
            backgroundColor: Colors.white,
              ),
            onTap: () {
              timerBloc.add(Start(duration: state.duration));
            }
        ),
      ];
    }
    if (state is Running) {
      var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
      var sw900 = MediaQuery.of(context).size.width >= 890;

      return [
        GestureDetector(
          child: CircleAvatar(
            radius: sw600 ? 50.0 : sw900 ? 60.0 : 40.0,
            backgroundImage: AssetImage("images/pause_button_orange.png"),
            backgroundColor: Colors.white,
          ),
          onTap: () {
            timerBloc.add(Pause());
          },
        ),
        GestureDetector(
          child: CircleAvatar(
            radius: sw600 ? 50.0 : sw900 ? 60.0 : 40.0,
            backgroundImage: AssetImage("images/reset_button_orange.png"),
            backgroundColor: Colors.white,
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
            radius: sw600 ? 50.0 : sw900 ? 60.0 : 40.0,
            backgroundImage: AssetImage("images/play_button_orange.png"),
            backgroundColor: Colors.white,
          ),
          onTap: () => timerBloc.add(Resume()),
        ),
        GestureDetector(
          child: CircleAvatar(
            radius: sw600 ? 50.0 : sw900 ? 60.0 : 40.0,
            backgroundImage: AssetImage("images/reset_button_orange.png"),
            backgroundColor: Colors.white,
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
            radius: sw600 ? 50.0 : sw900 ? 60.0 : 40.0,
            backgroundImage: AssetImage("images/reset_button_orange.png"),
            backgroundColor: Colors.white,
          ),
          onTap: () => timerBloc.add(Reset()),
        ),
      ];
    }
    return [];
  }
}

AdmobInterstitial myInterstitialAd() {
  return AdmobInterstitial(
      adUnitId: kInterstitialAdId,
      // targetingInfo: targetingInfo,
      listener: (AdmobAdEvent event, Map<String, dynamic>? args) {
        if (event == AdmobAdEvent.failedToLoad) {
          interstitialAd..load();
        } else if (event == AdmobAdEvent.closed) {
          interstitialAd = myInterstitialAd()..load();
        } else if (event == AdmobAdEvent.loaded){
          print('OrangeExercises: Ad is loaded');
        }
      });
}
