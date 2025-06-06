import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_routing/bloc/counter/counter_event.dart';
import 'package:flutter_routing/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc {
  CounterBloc() : super(CounterState("Hello bloc")) {
    on<TangSo>((event, emit) {
      emit(CounterState("Hello world"));
    });
  }
}
