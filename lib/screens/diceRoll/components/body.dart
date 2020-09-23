import 'package:flutter/material.dart';
import 'package:flutter_diceroll_secure/screens/diceRoll/components/diceRollButton.dart';
import 'package:flutter_diceroll_secure/screens/diceRoll/components/diceRow.dart';
import 'package:flutter_diceroll_secure/screens/diceRoll/components/diceValue.dart';

class DiceRollBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DiceRow(),
            DiceValue(),
            DiceRollButton(),
          ],
        ),
      ),
    );
  }
}
