import 'package:ekeep/src/infrastructure/theme/ekeep_theme_data.dart';
import 'package:ekeep/src/infrastructure/utils/color_utils.dart';
import 'package:flutter/material.dart';

class EkeepTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Dana',
    textTheme: EkeepThemeData.textTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 12),
        ),
        textStyle: MaterialStateProperty.all(
          EkeepThemeData.textTheme.bodyText1
              ?.copyWith(color: ColorUtils.ravenColor),
        ),
        backgroundColor: MaterialStateProperty.all(ColorUtils.whiteColor),
      ),
    ),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: ColorUtils.primarySwatch,
      // backgroundColor: ColorUtils.ravenColor,
      accentColor: ColorUtils.secondaryColor,
    ).copyWith(
      brightness: Brightness.dark,
      secondary: ColorUtils.secondaryColor,
      background: ColorUtils.ravenColor,
    ),
  );
}
