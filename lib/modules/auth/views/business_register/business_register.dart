import 'package:cheq/config/config.dart';
import 'package:cheq/modules/auth/controllers/business_register_controller.dart';
import 'package:cheq/modules/auth/controllers/register_controller.dart';
import 'package:cheq/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../auth_widgets.dart';
import 'widgets/business_register_form.dart';

class BusinessRegisterScreen extends StatelessWidget {
  const BusinessRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: GetBuilder<BusinessRegisterController>(
        init: BusinessRegisterController(),
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
                        authHeader('Business profile', hasSubtitle: true, subtitle: "Let's have your business\ndetails"),
                        const SizedBox(height: 50,),
                        businessRegisterForm(context, registerCtrl.formKey),
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
