import 'dart:async';
import 'dart:math';

import '../../utils/constants.dart';

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
    int _sumOfTheScore = 0;
    int _diceValue = 0;
    int _i = 0;
    while (_i < Constants.diceRollValue) {
      _diceValue = Random().nextInt(Constants.diceRollValue) + 1;
      _values.add(_diceValue);
      _sumOfTheScore += _diceValue;
      _i++;
    }
    this._numbersStreamController.sink.add(_values);
    this._scoreStreamController.sink.add('$_sumOfTheScore');
  }
}
