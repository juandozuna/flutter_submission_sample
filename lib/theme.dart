import 'package:flutter/material.dart';

class AppTheme {
  static Color secondaryColorLight = Color(0xFFEEF7FE);
  static Color secondaryColor = Color(0xFF8BBBE0);
  static Color primaryColor = Color(0xFF3FC3AA);
  static Color primaryColorLight = Color(0xFFE9FAF7);
  static Color dangerColor = Color(0xFFF09199);
  static Color black = Colors.black;
  static Color descriptionTextColor = Color(0xFF89969E);
  static ThemeData getAppTheme() {
    return ThemeData(
        primaryColor: primaryColor,
        accentColor: secondaryColor,
        errorColor: dangerColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: ThemeData.light().textTheme.copyWith(
          headline3: ThemeData.light().textTheme.headline3.copyWith(
            color: black.withOpacity(0.4),
            fontSize: 23,
            fontWeight: FontWeight.w900
          ),
          headline4: ThemeData.light().textTheme.headline2.copyWith(
            color: black,
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
          headline5: ThemeData.light().textTheme.headline5.copyWith(
            color: black.withOpacity(0.4),
            fontSize: 17,
            fontWeight: FontWeight.w900,
          ),
          headline6: ThemeData.light().textTheme.headline5.copyWith(
            color: descriptionTextColor,
            fontSize: 17,
            fontWeight: FontWeight.w900,
          ),
          headline1: ThemeData.light().textTheme.headline1.copyWith(
            color: black,
            fontSize: 50,
            fontWeight: FontWeight.w900
          )
        )
      );
  }


}