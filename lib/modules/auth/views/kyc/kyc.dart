import 'package:cheq/config/config.dart';
import 'package:cheq/modules/auth/controllers/kyc_controller.dart';
import 'package:cheq/modules/auth/views/auth_widgets.dart';
import 'package:cheq/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'widgets/kyc_form.dart';

class KycScreen extends StatelessWidget {
  const KycScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: GetBuilder<KycController>(
        init: KycController(),
        builder: (kycCtrl) {
          return SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: defaultPadding,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        authHeader(
                            'Verification',
                            hasSubtitle: true,
                            subtitle: "Verify your identity to keep using Cheq"
                        ),
                        const SizedBox(height: 50,),
                        kycForm(context, kycCtrl.formKey),
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
