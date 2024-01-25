import 'package:example/bloc/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'events.dart';

class CounterBloc extends Bloc<CounterEvents, CounterStates> {
  int counter = 0;

  CounterBloc() : super(InitialState()) {
    on<NumberIncreaseEvent>(onNumberIncrease);
    on<NumberDecreaseEvent>(onNumberDecrease);
  }

  void onNumberIncrease(
      NumberIncreaseEvent event, Emitter<CounterStates> emit) async {
    counter++;
    emit(UpdateState(counter));
  }

  void onNumberDecrease(
      NumberDecreaseEvent event, Emitter<CounterStates> emit) async {
    if (counter == 0) {
      counter = 0;
    } else {
      counter--;
    }

    emit(UpdateState(counter));
  }
}
