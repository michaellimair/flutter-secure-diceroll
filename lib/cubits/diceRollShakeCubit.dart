import 'package:bloc/bloc.dart';

class DiceRollShakeCubit extends Cubit<bool> {
  DiceRollShakeCubit() : super(true);

  void toggleShake(bool enable) => emit(enable);
}
