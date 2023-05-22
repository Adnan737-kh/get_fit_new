import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class TimerState extends Equatable{

  final int duration;

  TimerState(this.duration, [List props = const[]])
      : super();

}

class Ready extends TimerState{
  @override
  List<Object> get props => [duration];

  Ready(int duration): super(duration);

  @override
  String toString() => 'Ready {duration : $duration}';
}

class Paused extends TimerState{

  @override
  List<Object> get props => [duration];

  Paused(int duration): super(duration);

  @override
  String toString() => 'Paused {duration : $duration}';
}

class Running extends TimerState{

  @override
  List<Object> get props => [duration];

  Running(int duration): super(duration);

  @override
  String toString() => 'Running {duration: $duration}';

}

class Finished extends TimerState{
  @override
  List<Object> get props => [duration];


  Finished() : super(0);

  @override
  String toString() => 'Finished';

}