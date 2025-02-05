import 'package:basketball_counter_app/cubits/counter_cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit():super(CounterState());
int teamAScore = 0;
int teamBScore = 0;
  void incrementCounter({required String team,required int btnIndex}) {
    if (team == 'A') {
      teamAScore+=btnIndex;
    emit(CounterAState());
    } else {
      teamBScore+=btnIndex;
    }
    emit(CounterBState());
  }
void reset() {
    teamAScore = 0;
    teamBScore = 0;
    emit(CounterState());

  }

}
