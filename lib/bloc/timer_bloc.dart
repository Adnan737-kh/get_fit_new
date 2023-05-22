import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_fit_new/bloc/timer_event.dart';
import 'package:get_fit_new/bloc/timer_state.dart';

import '../ticker.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  final Ticker _ticker;
  final int durationTimer;

  StreamSubscription<int>? _tickerSubscription;

  TimerBloc({required this.durationTimer, required Ticker ticker})
      : _ticker = ticker,
        super(Ready(durationTimer)) {
    on<Start>((event, emit) {
      _tickerSubscription = _ticker
          .tick(ticks: event.duration)
          .listen((duration) => add(Tick(duration: duration)));
      emit(Running(event.duration));
    });
    on<Pause>((event, emit) {
      final tim_state = state;
      if (tim_state is Running) {
        _tickerSubscription?.pause();
        emit(Paused(state.duration));
      }
    });
    on<Resume>((event, emit) {
      final tim_state = state;
      if (tim_state is Paused) {
        _tickerSubscription?.resume();
        emit(Running(state.duration));
      }
    });
    on<Reset>((event, emit) {
      _tickerSubscription?.cancel();
      emit(Ready(durationTimer));
    });
    on<Tick>((event, emit) {
      emit(event.duration > 0 ? Running(event.duration) : Finished());
    });
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  @override
  Stream<TimerState> mapEventToState(TimerEvent event) async* {}
}
