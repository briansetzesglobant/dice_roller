import 'package:flutter/material.dart';

abstract class TextStyles {
  static const TextStyle bottomNavigationBarText = TextStyle(
    fontSize: 28.0,
    fontWeight: FontWeight.normal,
    height: 2.0,
  );
  static const TextStyle bottomNavigationBarScore =  TextStyle(
      fontSize: 25.0,
      fontWeight: FontWeight.normal,
      height: 2.0,
    );
  static const TextStyle bottomNavigationBarValue =TextStyle(
    color: Color.fromRGBO(
      189,
      56,
      27,
      150.0,
    ),
    fontSize: 25.0,
    fontWeight: FontWeight.normal,
    height: 2.0,
  );
}