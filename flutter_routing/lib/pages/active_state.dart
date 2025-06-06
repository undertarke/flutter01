import 'package:flutter/material.dart';
import 'package:flutter_routing/bloc/counter/counter_bloc.dart';
import 'package:flutter_routing/bloc/counter/counter_event.dart';
import 'package:flutter_routing/providers/provider.dart';
import 'package:provider/provider.dart';

class ActiveState extends StatelessWidget {
  const ActiveState({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text(
        //   "${context.watch<DemSoModel>().count}",
        //   style: TextStyle(fontSize: 50),
        // ),
        // ElevatedButton(
        //   onPressed: () {
        //     Provider.of<DemSoModel>(context, listen: false).tangSo();
        //   },
        //   child: Text("Tăng số"),
        // ),
        Text(
          "${context.watch<CounterBloc>().state.title}",
          style: TextStyle(fontSize: 50),
        ),
        ElevatedButton(
          onPressed: () {
            context.read<CounterBloc>().add(TangSo());
          },
          child: Text("Tăng số"),
        ),
      ],
    );
  }
}
