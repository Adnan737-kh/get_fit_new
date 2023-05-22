import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class TimerEvent extends Equatable{
  @override
  List<Object?> get props => [];

  const TimerEvent();

}

class Start extends TimerEvent{

  final int duration;
  Start({required this.duration}) : super();

  @override
  String toString() => "Start {duration : $duration}";
}

class Pause extends TimerEvent{

  @override
  String toString() => "Pause";
}

class Resume extends TimerEvent{

  @override
  String toString() => "Resume";
}

class Reset extends TimerEvent{

  @override
  String toString() => "Reset";
}

class Tick extends TimerEvent{

  final int duration;

  Tick({required this.duration}) : super();

  @override
  String toString() => "Tick {duration : $duration}";
}
