import 'package:cheq/config/config.dart';
import 'package:cheq/config/route/route_constants.dart';
import 'package:cheq/config/theme/text_styles.dart';
import 'package:cheq/modules/auth/controllers/business_logo_controller.dart';
import 'package:cheq/modules/auth/controllers/business_register_controller.dart';
import 'package:cheq/modules/auth/controllers/register_controller.dart';
import 'package:cheq/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../auth_widgets.dart';
import 'widgets/business_register_form.dart';
import 'widgets/logo_upload_widget.dart';

class BusinessLogoScreen extends StatelessWidget {
  const BusinessLogoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: GetBuilder<BusinessLogoController>(
        init: BusinessLogoController(),
        builder: (busLogoCtrl) {
          return SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: defaultPadding,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        authHeader('Business Logo', hasSubtitle: true, subtitle: "Upload Your Business Logo"),
                        const SizedBox(height: 50,),
                        Align(
                            alignment: Alignment.center,
                            child: logoUploadWidget(context),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 30, bottom: 20),
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () => Get.toNamed(RConst.businessLogoScreen),
                            child: const Text('Next'),
                          ),
                        ),

                        Center(
                          child: TextButton(
                              onPressed: () => Get.offAllNamed(RConst.homeScreen),
                              child: Text('Skip', style: textGreyBold)
                          ),
                        )
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
