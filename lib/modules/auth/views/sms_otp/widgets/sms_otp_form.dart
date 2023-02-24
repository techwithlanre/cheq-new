import 'package:cheq/config/route/route_constants.dart';
import 'package:cheq/config/theme/colors.dart';
import 'package:cheq/config/theme/input_theme.dart';
import 'package:cheq/config/theme/text_styles.dart';
import 'package:cheq/modules/auth/views/auth_widgets.dart';
import 'package:cheq/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';


_otpFormWidget(BuildContext context, String name) {
  return SizedBox(
    height: 75,
    width: 64,
    child: otpInputWrapper(
      FormBuilderTextField(
        onChanged: (value) {
          if(value?.length == 1) {
            FocusScope.of(context).nextFocus();
          } else if (value?.length == 0) {
            FocusScope.of(context).previousFocus();
          }
        },
        style: Theme.of(context).textTheme.headlineLarge,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ], name: name,
      )
    )
  );
}

smsOtpForm(BuildContext context, GlobalKey formKey) {
  return Form(
    key: formKey,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _otpFormWidget(context, 'pin1'),
            _otpFormWidget(context, 'pin2'),
            _otpFormWidget(context, 'pin3'),
            _otpFormWidget(context, 'pin4'),
          ],
        ),

        Container(
          margin: const EdgeInsets.only(top: 50, bottom: 20),
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            onPressed: () => Get.toNamed(RConst.businessRegisterScreen),
            child: const Text('Next'),
          ),
        ),
      ],
    )
  );
}