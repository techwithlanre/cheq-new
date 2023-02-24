import 'package:cheq/config/route/route_constants.dart';
import 'package:cheq/config/theme/colors.dart';
import 'package:cheq/config/theme/input_theme.dart';
import 'package:cheq/config/theme/text_styles.dart';
import 'package:cheq/modules/auth/views/auth_widgets.dart';
import 'package:cheq/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

registerForm(BuildContext context, GlobalKey formKey) {
  return Form(
    key: formKey,
    child: Column(
      children: [
        inputWrapper(textField('name',
            hint: "Enter your full name",
            textInputType: TextInputType.text
        ), "Name"),
        const SizedBox(height: 20,),
        inputWrapper(
          textField('email',
            hint: "Enter your email address",
            textInputType: TextInputType.emailAddress
          ), "Email"
        ),
        const SizedBox(height: 20,),
        inputWrapper(textField('phone',
            hint: "Enter your phone number",
            textInputType: TextInputType.number
        ), "Phone"),
        const SizedBox(height: 20,),
        inputWrapper(textField('password',
            hint: 'Enter your password',
            obscureText: true,
            textInputType: TextInputType.text
        ), "Password"),
        /*const SizedBox(height: 20,),
        inputWrapper(textField('password',
            hint: 'Enter your password again for confirmation',
            obscureText: true,
            textInputType: TextInputType.text
        ), "Confirm Password"),*/
        Container(
          margin: const EdgeInsets.only(top: 30, bottom: 20),
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            onPressed: () => Get.toNamed(RConst.smsOtpScreen),
            child: const Text('Next'),
          ),
        ),
      ],
    )
  );
}