import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_diceroll_secure/cubits/DiceRollCubit.dart';
import 'package:flutter_diceroll_secure/cubits/diceRollShakeCubit.dart';
import 'package:flutter_diceroll_secure/screens/diceRoll/components/body.dart';

class DiceRollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Secure Dice Roll'),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<DiceRollCubit>(create: (BuildContext context) => DiceRollCubit(),),
          BlocProvider<DiceRollShakeCubit>(create: (BuildContext context) => DiceRollShakeCubit(),),
        ],
        child: DiceRollBody()
      ),
    );
  }
}
