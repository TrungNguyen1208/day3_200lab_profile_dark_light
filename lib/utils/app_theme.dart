import 'package:flutter/material.dart';

import 'constants.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    accentColor: AppColor.kPrimaryColor,
    brightness: Brightness.light,
    primaryColor: AppColor.kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(color: Colors.white, elevation: 0),
    textTheme: TextTheme(
      headline5: TextStyle(fontSize: 24.0, color: AppColor.kTextColor),
      headline6: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
      subtitle1: TextStyle(fontSize: 16.0, color: AppColor.kTextColor),
      bodyText1: TextStyle(fontSize: 16.0, color: AppColor.kTextLightColor),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final darkTheme = ThemeData(
    accentColor: Colors.white,
    brightness: Brightness.dark,
    primaryColor: AppColor.kPrimaryDarkModeColor,
    scaffoldBackgroundColor: AppColor.kBgDarkModeColor,
    appBarTheme: AppBarTheme(color: Colors.white, elevation: 0),
    textTheme: TextTheme(
      headline5: TextStyle(fontSize: 24.0, color: Colors.white),
      headline6: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
      subtitle1: TextStyle(fontSize: 16.0, color: Colors.white),
      bodyText1: TextStyle(fontSize: 16.0, color: Colors.white60),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
