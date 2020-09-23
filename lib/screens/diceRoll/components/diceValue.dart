import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_diceroll_secure/cubits/DiceRollCubit.dart';
import 'package:flutter_diceroll_secure/states/diceRollState.dart';

class DiceValue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiceRollCubit, DiceRollState>(
      builder: (BuildContext context, DiceRollState state) {
        if (state is DiceRolledState) {
          final int totalValue = state.diceOneValue + state.diceTwoValue;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Total: $totalValue", style: Theme.of(context).textTheme.headline5,),
          );
        }
        return Container();
      },
    );
  }
}
