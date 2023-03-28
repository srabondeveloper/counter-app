import 'package:bloc_training/bloc/counter_event.dart';
import 'package:bloc_training/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState>{
  int counter=0;
  CounterBloc():super(InitState()){
    on<Increment>((event, emit){
      counter++;
      emit(UpdateState(counter));
    });
    on<Decrement>((event, emit){
      counter--;
      emit(UpdateState(counter));
    });
  }
}