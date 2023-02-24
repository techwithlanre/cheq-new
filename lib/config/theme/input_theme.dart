import 'package:cheq/config/theme/text_styles.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

TextStyle inputTextStyle() {
  return textGrey600Bold;
}

OutlineInputBorder _outlineInputBorder(Color color) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(7),
      borderSide: BorderSide(
          color: color,
          width: 1.5
      ),
  );
}

TextStyle _inputLabelStyle() => textGrey600Bold;
TextStyle _inputHintStyle() => textGrey;

InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    contentPadding: const EdgeInsets.all(16),
    isDense: true,
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide.none
    ),
    errorBorder: _outlineInputBorder(redColor),
    focusedBorder: _outlineInputBorder(primaryColor),
    border: _outlineInputBorder(TColor.whiteColor),
    labelStyle: _inputLabelStyle(),
    hintStyle: _inputHintStyle(),
);