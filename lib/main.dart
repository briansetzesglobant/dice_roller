import 'package:flutter/material.dart';
import 'dice_roller_ui.dart';
import 'src/bloc/dice_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final DiceBloc _diceBloc = DiceBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice Roller',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: DiceRollerUI(
        title: 'Dice Roller',
        bloc: _diceBloc,
      ),
    );
  }
}
