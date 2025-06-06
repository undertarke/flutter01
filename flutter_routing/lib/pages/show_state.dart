import 'package:flutter/material.dart';
import 'package:flutter_routing/bloc/counter/counter_bloc.dart';
import 'package:flutter_routing/providers/provider.dart';
import 'package:provider/provider.dart';

class ShowState extends StatelessWidget {
  const ShowState({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "${context.watch<CounterBloc>().state.title}",
      style: TextStyle(fontSize: 50),
    );
  }
}
