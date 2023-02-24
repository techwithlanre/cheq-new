import 'package:cheq/config/route/route_constants.dart';
import 'package:cheq/config/theme/colors.dart';
import 'package:cheq/config/theme/input_theme.dart';
import 'package:cheq/config/theme/text_styles.dart';
import 'package:cheq/modules/auth/views/auth_widgets.dart';
import 'package:cheq/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

loginForm(BuildContext context, GlobalKey formKey) {
  return Form(
    key: formKey,
    child: Column(
      children: [
        inputWrapper(
            textField('email',
                hint: "Enter your email address",
                textInputType: TextInputType.emailAddress
            ), "Email"
        ),
        const SizedBox(height: 20,),
        inputWrapper(textField('password',
            hint: 'Enter your password',
            obscureText: true,
            textInputType: TextInputType.text
        ), "Password"),
        Container(
          margin: const EdgeInsets.only(top: 30, bottom: 20),
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            onPressed: () => "",
            child: const Text('Login'),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () => Get.toNamed(RConst.forgotScreen),
            child: Text("Forgot Password?", style: textPrimaryBold),
          ),
        )
      ],
    )
  );
}