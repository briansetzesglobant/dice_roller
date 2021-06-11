import 'dart:async';
import 'dart:math';
import 'package:dice_roller/utils/constants.dart';
import 'i_dice_bloc.dart';

class DiceBloc extends IDiceBloc {
  List<int> _values = [];

  StreamController<List<int>> _numbersStreamController =
      StreamController<List<int>>.broadcast();

  StreamController<String> _scoreStreamController =
      StreamController<String>.broadcast();

  @override
  void initialize() {}

  @override
  void dispose() {
    _numbersStreamController.close();
    _scoreStreamController.close();
  }

  @override
  Stream<List<int>> get numbersStream => _numbersStreamController.stream;

  @override
  Stream<String> get scoreStream => _scoreStreamController.stream;

  @override
  void diceRoll() {
    _values.clear();
    int sumOfTheScore = 0;
    int diceValue = 0;
    int i = 0;
    while (i < Constants.diceRollValue) {
      diceValue = Random().nextInt(Constants.diceRollValue) + 1;
      _values.add(diceValue);
      sumOfTheScore += diceValue;
      i++;
    }
    this._numbersStreamController.sink.add(_values);
    this._scoreStreamController.sink.add('$sumOfTheScore');
  }
}
