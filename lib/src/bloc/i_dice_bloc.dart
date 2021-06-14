import 'bloc.dart';

abstract class IDiceBloc extends Bloc {
  Stream<List<int>> get numbersStream;

  Stream<String> get scoreStream;

  void diceRoll();
}
