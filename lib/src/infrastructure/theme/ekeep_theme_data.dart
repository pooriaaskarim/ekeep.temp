import 'package:flutter/material.dart';

import '../utils/font_utils.dart';

class EkeepThemeData {
  ///Ekeep Text Theme Data
  static TextTheme get textTheme => const TextTheme(
        headline1: TextStyle(
          fontFamily: FontUtils.fontFamily,
          fontSize: FontUtils.h1,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w900,
        ),
        headline2: TextStyle(
          fontFamily: FontUtils.fontFamily,
          fontSize: FontUtils.h2,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w900,
        ),
        headline3: TextStyle(
          fontFamily: FontUtils.fontFamily,
          fontSize: FontUtils.h3,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w100,
        ),
        headline4: TextStyle(
          fontFamily: FontUtils.fontFamily,
          fontSize: FontUtils.h4,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w900,
        ),
        headline5: TextStyle(
          fontFamily: FontUtils.fontFamily,
          fontSize: FontUtils.h5,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w100,
        ),
        bodyText1: TextStyle(
          fontFamily: FontUtils.fontFamily,
          fontSize: FontUtils.body,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
        ),
        bodyText2: TextStyle(
          fontFamily: FontUtils.fontFamily,
          fontSize: FontUtils.body,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
        ),
        // bodySmall: const TextStyle(
        //   fontFamily: FontUtils.fontFamily,
        //   fontSize: FontUtils.body,
        //   fontStyle: FontStyle.normal,
        //   fontWeight: FontWeight.w100,
        // ),
      );
}
