import 'package:cheq/config/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../config/theme/input_theme.dart';

FormBuilderTextField textField(String name, {String? hint, Icon? icon, bool obscureText = false, TextInputType? textInputType, Function? onChanged}) {
  return FormBuilderTextField(
    keyboardType: textInputType,
    obscureText: obscureText,
    style: inputTextStyle(),
    decoration: InputDecoration(
      hintText: hint,
      prefixIcon: icon,
    ),
    name: name,
    onChanged: (val) => onChanged,
  );
}

FormBuilderDropdown dropdownField(String name, {String? hint, List<String>? list }) {

  return FormBuilderDropdown(
    style: inputTextStyle(),
    decoration: InputDecoration(
      hintText: hint
    ),
    icon: showSvg('arrowdown', height: 8),
    name: name,
    items: list!
      .map((gender) => DropdownMenuItem(
    alignment: AlignmentDirectional.center,
    value: gender,
    child: Text(gender),
  ))
      .toList(),
  );
}

GestureDetector backButton = GestureDetector(
    onTap: () => Get.back(),
    child: const Icon(
      Icons.arrow_back_ios,
      size: 19,
      color: grey700,
    )
);

AppBar customAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: whiteColor,
    leading: backButton,
  );
}


Widget showSvg(String name, {double? height, double? width}) {
  return SvgPicture.asset(
    "assets/images/$name.svg",
    height: height,
    width: width
  );
}

SizedBox horizontalSpace(double size) {
  return SizedBox(
    width: size,
  );
}

SizedBox verticalSpace(double size) {
  return SizedBox(
    height: size,
  );
}

roundContainer({Widget? child, double? height, double? width, Color? backgroundColor}) {
  return Container(
    padding: const EdgeInsets.all(6),
    height: height,
    width: width,
    decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle
    ),
    child: child,
  );
}