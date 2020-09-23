import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_diceroll_secure/cubits/DiceRollCubit.dart';
import 'package:shake/shake.dart';

class DiceRollButton extends StatefulWidget {
  @override
  _DiceRollButtonState createState() => _DiceRollButtonState();
}

class _DiceRollButtonState extends State<DiceRollButton> {
  ShakeDetector detector;

  Null rollDice() {
    BlocProvider.of<DiceRollCubit>(context).rollDice();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    detector = ShakeDetector.autoStart(
      onPhoneShake: rollDice,
      shakeThresholdGravity: 1.7,
      shakeSlopTimeMS: 2000,
    );
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Press to roll the dice!'),
      onPressed: rollDice,
    );
  }
}
