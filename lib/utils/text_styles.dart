import 'package:flutter/material.dart';
import 'constants.dart';

abstract class TextStyles {
  static const TextStyle bottomNavigationBarText = TextStyle(
    fontSize: 28.0,
    fontWeight: FontWeight.normal,
    height: 2.0,
  );
  static const TextStyle bottomNavigationBarScore = TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.normal,
    height: 2.0,
  );
  static const TextStyle bottomNavigationBarValue = TextStyle(
    color: Color.fromRGBO(
      Constants.TextStyle189,
      Constants.TextStyle56,
      Constants.TextStyle27,
      Constants.TextStyle150_0,
    ),
    fontSize: 25.0,
    fontWeight: FontWeight.normal,
    height: 2.0,
  );
}
