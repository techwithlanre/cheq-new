import 'package:cheq/config/config.dart';
import 'package:cheq/config/theme/colors.dart';
import 'package:cheq/modules/auth/controllers/business_register_controller.dart';
import 'package:cheq/modules/auth/controllers/register_controller.dart';
import 'package:cheq/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey50,
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
                        homeHeader('Business profile', hasSubtitle: true, subtitle: "Let's have your business\ndetails"),
                        greetingWidget(),
                        homeSalesCard(),
                        homeFeatureCard()
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
