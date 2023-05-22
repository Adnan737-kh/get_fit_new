import 'package:flutter/material.dart';
import 'package:get_fit_new/without_equipment/we_exercises/we_exercise_info.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_fit_new/ticker.dart';
import 'package:get_fit_new/bloc/timer_bloc.dart';
import 'package:get_fit_new/bloc/timer_state.dart';
import 'package:get_fit_new/bloc/timer_event.dart';
import 'package:get_fit_new/constants.dart';

class WeExerciseScreen extends StatefulWidget {
  static const String id = 'we_exercise_screen';

  WeExerciseScreen({
    required this.durationTimer,
    required this.day,
    required this.gifSource,
    required this.content,
    required this.jumpingJacksDuration,
    required this.lungesDuration,
    required this.mountainClimberDuration,
    required this.highKneesRunningDuration,
    required this.squatsDuration,
    required this.flutterKicksDuration,
  }
  );

  final int durationTimer;
  final int jumpingJacksDuration;
  final int lungesDuration;
  final int mountainClimberDuration;
  final int highKneesRunningDuration;
  final int squatsDuration;
  final int flutterKicksDuration;

  final String day;
  final String gifSource;
  final String content;

  @override
  _WeExerciseScreenState createState() => _WeExerciseScreenState();
}

class _WeExerciseScreenState extends State<WeExerciseScreen> {
  @override
  Widget build(BuildContext context) {
    final TimerBloc _timerBloc =
        TimerBloc(ticker: Ticker(), durationTimer: widget.durationTimer);
    return Scaffold(
      body: BlocProvider(
        create:(context) =>  _timerBloc,
        child: Timer(
          day: widget.day,
          gifSource: widget.gifSource,
          content: widget.content,
          jumpingJacksDuration: widget.jumpingJacksDuration,
          lungesDuration: widget.lungesDuration,
          mountainClimberDuration: widget.mountainClimberDuration,
          highKneesRunningDuration: widget.highKneesRunningDuration,
          squatsDuration: widget.squatsDuration,
          flutterKicksDuration: widget.flutterKicksDuration,
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
  final String day;
  final String gifSource;
  final String content;

  final int jumpingJacksDuration;
  final int lungesDuration;
  final int mountainClimberDuration;
  final int highKneesRunningDuration;
  final int squatsDuration;
  final int flutterKicksDuration;

  Timer({
    required this.day,
    required this.gifSource,
    required this.content,
    required this.jumpingJacksDuration,
    required this.lungesDuration,
    required this.mountainClimberDuration,
    required this.highKneesRunningDuration,
    required this.squatsDuration,
    required this.flutterKicksDuration,
  });

  @override
  Widget build(BuildContext context) {
    final TimerBloc _timerBloc = BlocProvider.of<TimerBloc>(context);

    var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
    var sw900 = MediaQuery.of(context).size.width >= 890;
    var sw320to400 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 400;
    var sw320to380 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 380;
    var sw380to399 = MediaQuery.of(context).size.width > 380 && MediaQuery.of(context).size.width < 399;
    var sw400to590 = MediaQuery.of(context).size.width > 400 && MediaQuery.of(context).size.width < 599;

    return Scaffold(
      appBar: AppBar(
        leading: Container(
          width: 25.0,
          height: 25.0,
          child: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),

        ),
        title: Text(day),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              'Tap on picture for demonstration and details.',
              style: TextStyle(
                fontSize: sw600 ? 22.0 : sw900 ? 28 : 16.0,
                fontFamily: 'Lato',
                color: Colors.blue,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  child: Container(
                    width: sw600 ? 135.0 : sw380to399 ? 80.0 : sw900 ? 200 : 100.0 ,
                    height: sw600 ? 135.0 : sw380to399 ? 80.0 : sw900 ? 200 : 100.0,
                    child: Image(
                      image: AssetImage('images/jumpingjacks_op.gif'),
                    ),
                  ),
                  onTap: () {
                    final TimerState state = _timerBloc.state;
                    if (state is Running || state is Paused){
                      _timerBloc.add(Reset());
                    }
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WeExerciseInfoScreen(
                                  content: kJumpingJacks,
                                  durationTimer: jumpingJacksDuration,
                                  exerciseName: 'Jumping Jacks',
                                  gifSource: 'images/jumpingjacks_op.gif',
                                  showAd: false,
                                )));
                  },
                ),
                GestureDetector(
                  child: Container(
                    width: sw600 ? 135.0 : sw380to399 ? 80.0 : sw900 ? 200 : 100.0 ,
                    height: sw600 ? 135.0 : sw380to399 ? 80.0 : sw900 ? 200 : 100.0,
                    child: Image(
                      image: AssetImage('images/lunges.gif'),
                    ),
                  ),
                  onTap: () {
                    final TimerState state = _timerBloc.state;
                    if (state is Running || state is Paused){
                      _timerBloc.add(Reset());
                    }
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WeExerciseInfoScreen(
                                  content: kLunges,
                                  durationTimer: lungesDuration,
                                  exerciseName: 'Lunges',
                                  gifSource: 'images/lunges.gif',
                                  showAd: true,
                                )));
                  },
                ),
                GestureDetector(
                  child: Container(
                    width: sw600 ? 135.0 : sw380to399 ? 80.0 : sw900 ? 200 : 100.0 ,
                    height: sw600 ? 135.0 : sw380to399 ? 80.0 : sw900 ? 200 : 100.0,
                    child: Image(
                      image: AssetImage('images/mountainclimber_op.gif'),
                    ),
                  ),
                  onTap: () {
                    final TimerState state = _timerBloc.state;
                    if (state is Running || state is Paused){
                      _timerBloc.add(Reset());
                    }
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WeExerciseInfoScreen(
                                  content: kMountainClimber,
                                  durationTimer: mountainClimberDuration,
                                  exerciseName: 'Mounrain Climber',
                                  gifSource: 'images/mountainclimber_op.gif',
                                  showAd: false,
                                )));
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  child: Container(
                    width: sw600 ? 135.0 : sw380to399 ? 80.0 : sw900 ? 200 : 100.0 ,
                    height: sw600 ? 135.0 : sw380to399 ? 80.0 : sw900 ? 200 : 100.0,
                    child: Image(
                      image: AssetImage('images/highkneesrunning_op.gif'),
                    ),
                  ),
                  onTap: () {
                    final TimerState state = _timerBloc.state;
                    if (state is Running || state is Paused){
                      _timerBloc.add(Reset());
                    }
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WeExerciseInfoScreen(
                                  content: kHighKneesRunning,
                                  durationTimer: highKneesRunningDuration,
                                  exerciseName: 'High Knees Running',
                                  gifSource: 'images/highkneesrunning_op.gif',
                                  showAd: false,
                                )));
                  },
                ),
                GestureDetector(
                  child: Container(
                    width: sw600 ? 135.0 : sw380to399 ? 80.0 : sw900 ? 200 : 100.0 ,
                    height: sw600 ? 135.0 : sw380to399 ? 80.0 : sw900 ? 200 : 100.0,
                    child: Image(
                      image: AssetImage('images/squats_op.gif'),
                    ),
                  ),
                  onTap: () {
                    final TimerState state = _timerBloc.state;
                    if (state is Running || state is Paused){
                      _timerBloc.add(Reset());
                    }
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WeExerciseInfoScreen(
                                  content: kSquats,
                                  durationTimer: squatsDuration,
                                  exerciseName: 'Squats',
                                  gifSource: 'images/squats_op.gif',
                                  showAd: true,
                                )));
                  },
                ),
                GestureDetector(
                  child: Container(
                    width: sw600 ? 135.0 : sw380to399 ? 80.0 : sw900 ? 200 : 100.0 ,
                    height: sw600 ? 135.0 : sw380to399 ? 80.0 : sw900 ? 200 : 100.0,
                    child: Image(
                      image: AssetImage('images/flutterkicks_op.gif'),
                    ),
                  ),
                  onTap: () {
                    final TimerState state = _timerBloc.state;
                    if (state is Running || state is Paused){
                      _timerBloc.add(Reset());
                    }
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WeExerciseInfoScreen(
                                  content: kFlutterKicks,
                                  durationTimer: flutterKicksDuration,
                                  exerciseName: 'Flutter Kicks',
                                  gifSource: 'images/flutterkicks_op.gif',
                                  showAd: false,
                                )));
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: SizedBox(
              height: sw600 ? 4.0 : sw900 ? 6 :  2,
              width: MediaQuery.of(context).size.width - 20.0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: sw600 ? 5 : sw900 ? 10 : 3.0, bottom: 5.0),
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
                    style: sw380to399 ? TextStyle(
                        fontSize: 33,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontFamily: 'Lato'
                    ) : sw600 ? TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontFamily: 'Lato'
                    ) : sw900 ? TextStyle(
                        fontSize: 58,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontFamily: 'Lato'
                    ) : kTimerOrangeTextStyle,
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: sw900 ? 15 : 0,
          ),
          BlocBuilder(
            buildWhen: (previousState, currentState) =>
                currentState.runtimeType != previousState.runtimeType,
            bloc: _timerBloc,
            builder: (context, state) => Actions(),
          ),
          SizedBox(
            height: sw900 ? 5 : 0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: SizedBox(
              height: sw600 ? 4.0 : sw900 ? 6 :  2,
              width: MediaQuery.of(context).size.width - 20.0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color:Colors.blue,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(sw900 ? 10 : 0),
              width: double.infinity,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    content,
                    style: TextStyle(
                      fontSize: sw600 ? 30.0 : sw900 ? 38 :  22.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lato',
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
          )
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

/*
class WeExerciseScreen extends StatelessWidget {
  static const String id = 'we_exercise_screen';
*/

/*
class ImagesLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 120.0,
                height: 120.0,
                child: Image(
                  image: AssetImage(
                    'images/plank_op.gif',
                  ),
                ),
              ),
              Container(
                width: 120.0,
                height: 120.0,
                child: Image(
                  image: AssetImage(
                    'images/plank_op.gif',
                  ),
                ),
              ),
              Container(
                width: 120.0,
                height: 120.0,
                child: Image(
                  image: AssetImage(
                    'images/plank_op.gif',
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 120.0,
                height: 120.0,
                child: Image(
                  image: AssetImage(
                    'images/plank_op.gif',
                  ),
                ),
              ),
              Container(
                width: 120.0,
                height: 120.0,
                child: Image(
                  image: AssetImage(
                    'images/plank_op.gif',
                  ),
                ),
              ),
              Container(
                width: 120.0,
                height: 120.0,
                child: Image(
                  image: AssetImage(
                    'images/plank_op.gif',
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
*/
