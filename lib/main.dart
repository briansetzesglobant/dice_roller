import 'package:flutter/material.dart';
import 'DiceRollerUI.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
      ),
    );
  }
}
