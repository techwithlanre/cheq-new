
import 'package:cheq/config/theme/colors.dart';
import 'package:cheq/config/theme/text_styles.dart';
import 'package:cheq/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

loginHeader() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      showSvg('logo', height: 25),
      const SizedBox(height: 30,),
      Text('Welcome back!', style: headingBlack)
    ],
  );
}