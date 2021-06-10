import 'package:flutter/material.dart';
import 'constants.dart';

abstract class TextStyles {
  static const TextStyle bottomNavigationBarText = TextStyle(
    fontSize: Constants.textStyleFontSizeConst,
    fontWeight: FontWeight.normal,
    height: Constants.heightConst,
  );
  static const TextStyle bottomNavigationBarScore = TextStyle(
    fontSize: Constants.textStyleFontSizeConstSmall,
    fontWeight: FontWeight.normal,
    height: Constants.heightConst,
  );
  static const TextStyle bottomNavigationBarValue = TextStyle(
    color: Color.fromRGBO(
      Constants.TextStyleRed,
      Constants.TextStyleGreen,
      Constants.TextStyleBlue,
      Constants.TextStyleOpacity,
    ),
    fontSize: Constants.textStyleWithColorFontSize,
    fontWeight: FontWeight.normal,
    height: Constants.heightConst,
  );
}
