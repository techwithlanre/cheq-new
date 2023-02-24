import 'package:cheq/config/config.dart';
import 'package:cheq/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/sms_otp_controller.dart';
import '../auth_widgets.dart';
import 'widgets/sms_otp_form.dart';

class SmsOtpScreen extends StatelessWidget {
  const SmsOtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: GetBuilder<SmsOtpController>(
        init: SmsOtpController(),
        builder: (smsOtpCtrl) {
          return SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: defaultPadding,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        authHeader('Phone Number Verification', hasSubtitle: true, subtitle: "We sent an OTP to your phone number"),
                        const SizedBox(height: 50,),
                        smsOtpForm(context, smsOtpCtrl.formKey),
                      ],
                    ),
                  ),
                ),
              )
          );
        },
      ),
    );
  }
}
