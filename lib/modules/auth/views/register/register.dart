import 'package:cheq/config/config.dart';
import 'package:cheq/modules/auth/controllers/register_controller.dart';
import 'package:cheq/modules/auth/views/register/widgets/register_form.dart';
import 'package:cheq/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../auth_widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: GetBuilder<RegisterController>(
        init: RegisterController(),
        builder: (registerCtrl) {
          return SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: defaultPadding,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        authHeader('Create an account', hasSubtitle: true, subtitle: "Sign up to start using Cheq"),
                        const SizedBox(height: 50,),
                        registerForm(context, registerCtrl.formKey),
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
