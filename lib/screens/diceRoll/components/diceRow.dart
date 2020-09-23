import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_diceroll_secure/cubits/DiceRollCubit.dart';
import 'package:flutter_diceroll_secure/screens/diceRoll/components/diceImage.dart';
import 'package:flutter_diceroll_secure/states/diceRollState.dart';

class DiceRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiceRollCubit, DiceRollState>(
      builder: (BuildContext context, DiceRollState state) {
        if (state is DiceRolledState) {
          return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: DiceImage(diceValue: state.diceOneValue),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: DiceImage(diceValue: state.diceTwoValue),
                )),
              ],
            ),
          );
        }
        return Container();
      },
    );
  }
}
