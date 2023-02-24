import 'package:cheq/config/route/route_constants.dart';
import 'package:cheq/config/theme/colors.dart';
import 'package:cheq/config/theme/input_theme.dart';
import 'package:cheq/config/theme/text_styles.dart';
import 'package:cheq/modules/auth/views/auth_widgets.dart';
import 'package:cheq/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

businessRegisterForm(BuildContext context, GlobalKey formKey) {
  return Form(
    key: formKey,
    child: Column(
      children: [
        inputWrapper(textField('name',
            hint: "Business Name",
            textInputType: TextInputType.text
        ), "Enter your business name"),
        const SizedBox(height: 20,),
        inputWrapper(
          textField('email',
            hint: "Enter your business email address",
            textInputType: TextInputType.emailAddress
          ), "Email Address"
        ),
        const SizedBox(height: 20,),
        inputWrapper(textField('phone',
            hint: "Enter your business phone number",
            textInputType: TextInputType.number
        ), "Phone Number"),
        const SizedBox(height: 20,),
        inputWrapper(textField('password',
            hint: 'NGN Naira',
            obscureText: false,
            textInputType: TextInputType.text
        ), "Currency"),
        const SizedBox(height: 20,),
        inputWrapper(textField('password',
            hint: 'Select your business category',
            obscureText: false,
            textInputType: TextInputType.text
        ), "Business Category"),
        Container(
          margin: const EdgeInsets.only(top: 30, bottom: 20),
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            onPressed: () => Get.toNamed(RConst.businessLogoScreen),
            child: const Text('Next'),
          ),
        ),
      ],
    )
  );
}