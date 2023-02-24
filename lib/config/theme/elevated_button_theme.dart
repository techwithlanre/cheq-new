import 'package:cheq/config/theme/colors.dart';
import 'package:flutter/material.dart';
import 'text_styles.dart';

ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: TColor.primaryColor,
        textStyle: elevatedButtonTextStyle,
        animationDuration: const Duration(milliseconds: 500),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
        padding: const EdgeInsets.all(15)
    ),
);