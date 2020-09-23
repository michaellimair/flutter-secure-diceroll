import 'package:flutter/material.dart';
import 'package:flutter_diceroll_secure/screens/diceRoll/diceRoll.dart';
import 'package:flutter_diceroll_secure/screens/welcome/welcome.dart';

void main() {
  runApp(DiceRollApp());
}

class DiceRollApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Secure Dice Roll',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/Welcome',
      routes: {
        '/Welcome': (_) => WelcomeScreen(),
        '/DiceRoll': (_) => DiceRollScreen()
      },
    );
  }
}
