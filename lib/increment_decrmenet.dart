import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test03/cubit/counter_cubit.dart';

class IncrementDecrmenet extends StatelessWidget {
  const IncrementDecrmenet({super.key});

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Increment/Decrement'),
      ),
      body: Center(
        child: Text("Increment and Decrement"),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'increment_fab',
            onPressed: () => counterCubit.increment(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10,),
          FloatingActionButton(
            heroTag: 'decrement_fab',
            onPressed: () => counterCubit.decrement(),
            tooltip: 'Decrement',
            child: const Icon(Icons.minimize_rounded),
          ),
        ],
      ),
    );
  }
}