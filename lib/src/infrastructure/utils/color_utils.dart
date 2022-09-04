import 'package:flutter/material.dart';

class ColorUtils {
  ///Primary Color
  static const Color primaryColor = Color(0xff00CC90);
  static MaterialColor primarySwatch = MaterialColor(0xff00CC90, primaryShades);
  static Map<int, Color> primaryShades = {
    50: const Color.fromRGBO(0, 204, 144, .1),
    100: const Color.fromRGBO(0, 204, 144, .2),
    200: const Color.fromRGBO(0, 204, 144, .3),
    300: const Color.fromRGBO(0, 204, 144, .4),
    400: const Color.fromRGBO(0, 204, 144, .5),
    500: const Color.fromRGBO(0, 204, 144, .6),
    600: const Color.fromRGBO(0, 204, 144, .7),
    700: const Color.fromRGBO(0, 204, 144, .8),
    800: const Color.fromRGBO(0, 204, 144, .9),
    900: const Color.fromRGBO(0, 204, 144, 1),
  };

  ///Secondary Color
  static const Color secondaryColor = Color(0xffE34F72);
  static MaterialColor secondarySwatch =
      MaterialColor(0xffE34F72, secondaryShades);
  static Map<int, Color> secondaryShades = {
    50: const Color.fromRGBO(227, 79, 114, .1),
    100: const Color.fromRGBO(227, 79, 114, .2),
    200: const Color.fromRGBO(227, 79, 114, .3),
    300: const Color.fromRGBO(227, 79, 114, .4),
    400: const Color.fromRGBO(227, 79, 114, .5),
    500: const Color.fromRGBO(227, 79, 114, .6),
    600: const Color.fromRGBO(227, 79, 114, .7),
    700: const Color.fromRGBO(227, 79, 114, .8),
    800: const Color.fromRGBO(227, 79, 114, .9),
    900: const Color.fromRGBO(227, 79, 114, 1),
  };

  static const Color ravenColor = Color(0xff121212);
  static const Color coalColor = Color(0xff262928);
  static const Color metalColor = Color(0xff404040);
  static const Color lightGrayColor = Color(0xff777777);
  static const Color whiteColor = Color(0xffF2F2F2);
}
