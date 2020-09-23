abstract class DiceRollState {
  final int diceOneValue;
  final int diceTwoValue;

  DiceRollState(this.diceOneValue, this.diceTwoValue);
}

// Initial state is null for both dices one and two
class InitialDiceRollState implements DiceRollState {
  final int diceOneValue = null;
  final int diceTwoValue = null;

  InitialDiceRollState() : super();
}

class DiceRolledState implements DiceRollState {
  final int diceOneValue;
  final int diceTwoValue;

  DiceRolledState(this.diceOneValue, this.diceTwoValue)
      : super();
}
