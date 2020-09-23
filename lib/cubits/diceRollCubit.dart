import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter_diceroll_secure/states/diceRollState.dart';

class DiceRollCubit extends Cubit<DiceRollState> {
  final Random _secureRandomNumberGenerator = Random.secure();
  DiceRollCubit() : super(InitialDiceRollState());

  void rollDice() {
    // Dice one and two will be an integer with values between 1 to 6
    final int diceOneValue = _secureRandomNumberGenerator.nextInt(6) + 1;
    final int diceTwoValue = _secureRandomNumberGenerator.nextInt(6) + 1;

    emit(DiceRolledState(diceOneValue, diceTwoValue));
  }
}
