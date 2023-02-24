import 'package:cheq/config/theme/colors.dart';
import 'package:cheq/config/theme/text_styles.dart';
import 'package:cheq/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

authHeader(String title, {bool? hasSubtitle, String? subtitle}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      showSvg('logo', height: 30),
      const SizedBox(height: 20,),
      Text(title, style: textGrey600Bold),
      if(hasSubtitle!) Container(
        margin: const EdgeInsets.only(top: 10),
        child: Text(subtitle!,
          textAlign: TextAlign.start,
          style: headingBlack.copyWith(
        ),),
      )
    ],
  );
}

Column inputWrapper(FormBuilderTextField textField, String formTitle) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(formTitle, style: textDeepBlue),
      SizedBox(height: 5),
      Container(
        decoration: BoxDecoration(
            color: grey100,
            borderRadius: BorderRadius.circular(8)
        ),
        child: textField,
      ),
    ],
  );
}

Column dropdownWrapper(FormBuilderDropdown dropdownField, String formTitle) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(formTitle, style: textDeepBlue),
      const SizedBox(height: 5),
      Container(
        decoration: BoxDecoration(
            color: grey100,
            borderRadius: BorderRadius.circular(8)
        ),
        child: dropdownField,
      ),
    ],
  );
}



Column otpInputWrapper(FormBuilderTextField textField) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        decoration: BoxDecoration(
            color: grey100,
            borderRadius: BorderRadius.circular(8)
        ),
        child: textField,
      ),
    ],
  );
}