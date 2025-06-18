import 'package:flutter/material.dart';
import 'package:stockportfoliodashboard/utils/constants/colors.dart';
import 'package:stockportfoliodashboard/utils/theme/custom_theme/text_theme.dart';

class AppThemeX {
  AppThemeX._();

  static ThemeData lightTheme = ThemeData();
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    primaryColor: ColorX.backgroundColor,
    scaffoldBackgroundColor: ColorX.primaryColor,
    textTheme: TextThemeX.darkTextTheme,
  );
}
