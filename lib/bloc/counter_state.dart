import 'package:equatable/equatable.dart';

abstract class CounterState extends Equatable{

}

class InitState extends CounterState{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class UpdateState extends CounterState{
  UpdateState(this.counter);
  int counter;
  @override
  // TODO: implement props
  List<Object?> get props => [counter];

}