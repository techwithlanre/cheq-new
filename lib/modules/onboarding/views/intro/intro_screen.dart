import 'package:cheq/config/config.dart';
import 'package:cheq/config/route/route_constants.dart';
import 'package:cheq/config/theme/colors.dart';
import 'package:cheq/config/theme/text_styles.dart';
import 'package:cheq/modules/onboarding/controllers/intro_controller.dart';
import 'package:cheq/modules/onboarding/data/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'widgets/widgets.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  Expanded _pageView(introCtrl, context) {
    return Expanded(child: PageView(
      onPageChanged: (currentIndex) => introCtrl.index.value = currentIndex,
      controller: introCtrl.pageController.value,
      children: buildIntroPages(context),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<IntroController>(
        init: IntroController(),
        builder: (introCtrl) {
          return SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _pageView(introCtrl, context),
                  SmoothPageIndicator(
                      controller: introCtrl.pageController.value,
                      count: pages.length,
                    effect: ExpandingDotsEffect(
                      dotColor: grey300,
                      dotHeight: 2,
                      dotWidth: 20,
                      activeDotColor: Theme.of(context).primaryColor,
                      strokeWidth: 2
                    ),
                  ),
                 const SizedBox(height: 30,),
                 Container(
                    padding: defaultPadding,
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: TColor.whiteColor,
                              side: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 1,
                                style: BorderStyle.solid
                              )
                            ),
                            onPressed: () => Get.toNamed(RConst.loginScreen),
                            child: const Text('Login', style: TextStyle(
                              color: primaryColor
                            ),)
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                              onPressed: () => Get.toNamed(RConst.registerScreen),
                              child: const Text('Create an account')
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'By tapping on Create an account, and using Ventri, \nyou agree to our Terms of Service & \nPrivacy Policy.',
                    style: textGrey10,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 40,
                  )
                ],
              )
          );
        },
      ),
    );
  }
}
