import 'package:flutter/material.dart';
import 'app__bar_theme.dart';
import 'button_theme.dart';
import 'colors.dart';
import 'elevated_button_theme.dart';
import 'icon_theme.dart';
import 'input_theme.dart';
import 'text_theme.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: TColor.primaryColor,
  scaffoldBackgroundColor: TColor.lightBackgroundColor,
  elevatedButtonTheme: elevatedButtonThemeData,
  buttonTheme: buttonThemeData,
  textTheme: lightTextTheme,
  inputDecorationTheme: inputDecorationTheme,
  iconTheme: iconThemeData,
  appBarTheme: appBarTheme
);


ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark
);


ThemeData dimTheme = ThemeData(
  brightness: Brightness.dark
);