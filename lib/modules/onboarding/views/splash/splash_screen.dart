import 'package:cheq/config/config.dart';
import 'package:cheq/config/theme/colors.dart';
import 'package:cheq/modules/onboarding/controllers/splash_controller.dart';
import 'package:cheq/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.whiteColor,
      body: GetBuilder<SplashController>(
        init: SplashController(),
        builder: (splashCtrl) {
          return SafeArea(
              child: Padding(
                padding: pagePadding,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      showSvg('logo', height: 50)
                    ],
                  ),
                ),
          ));
        },
      ),
    );
  }
}
