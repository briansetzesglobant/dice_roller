import 'package:flutter/material.dart';
import 'constants.dart';

abstract class TextStyles {
  static const TextStyle bottomNavigationBarText = TextStyle(
    fontSize: Constants.textStyleFontSize,
    fontWeight: FontWeight.normal,
    height: Constants.textStyleHeight,
  );
  static const TextStyle bottomNavigationBarScore = TextStyle(
    fontSize: Constants.textStyleFontSizeSmall,
    fontWeight: FontWeight.normal,
    height: Constants.textStyleHeight,
  );
  static const TextStyle bottomNavigationBarValue = TextStyle(
    color: Color.fromRGBO(
      Constants.textStyleRed,
      Constants.textStyleGreen,
      Constants.textStyleBlue,
      Constants.textStyleOpacity,
    ),
    fontSize: Constants.textStyleWithColorFontSize,
    fontWeight: FontWeight.normal,
    height: Constants.textStyleHeight,
  );
}
