import 'package:cheq/config/config.dart';
import 'package:cheq/modules/auth/controllers/login_controller.dart';
import 'package:cheq/modules/auth/views/login/widgets/login_header.dart';
import 'package:cheq/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: GetBuilder<LoginController>(
        init: LoginController(),
        builder: (loginCtrl) {
          return SingleChildScrollView(
            child: SafeArea(
                child: Padding(
                  padding: defaultPadding,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        loginHeader(),
                        const SizedBox(height: 50,),
                        loginForm(context, loginCtrl.formKey),
                      ],
                    ),
                  ),
                )
            ),
          );
        },
      ),
    );
  }
}
