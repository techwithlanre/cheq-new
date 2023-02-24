import 'package:cheq/config/config.dart';
import 'package:cheq/modules/auth/controllers/forgot_controller.dart';
import 'package:cheq/modules/auth/views/auth_widgets.dart';
import 'package:cheq/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: GetBuilder<ForgotController>(
        init: ForgotController(),
        builder: (loginCtrl) {
          return SafeArea(
              child: Padding(
                padding: defaultPadding,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      authHeader("Forgot Password", hasSubtitle: true, subtitle: 'We will send you a link to reset your password'),
                      const SizedBox(height: 50,),
                      inputWrapper(
                        textField(
                          "email",
                          hint: "Enter your email address",
                          textInputType: TextInputType.emailAddress
                        ), "Email"
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30, bottom: 20),
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          onPressed: () => "",
                          child: const Text('Continue'),
                        ),
                      ),
                    ],
                  ),
                ),
              )
          );
        },
      ),
    );
  }
}
