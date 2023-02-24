import 'package:cheq/config/route/route_config.dart';
import 'package:cheq/config/route/route_constants.dart';
import 'package:cheq/modules/auth/views/business_register/business_logo.dart';
import 'package:cheq/modules/auth/views/business_register/business_register.dart';
import 'package:cheq/modules/auth/views/forgot/forgot.dart';
import 'package:cheq/modules/auth/views/kyc/kyc.dart';
import 'package:cheq/modules/auth/views/login/login.dart';
import 'package:cheq/modules/auth/views/register/register.dart';
import 'package:cheq/modules/auth/views/sms_otp/sms_otp.dart';
import 'package:cheq/modules/home/views/home/home.dart';
import 'package:cheq/modules/onboarding/views/intro/intro_screen.dart';
import 'package:cheq/modules/onboarding/views/splash/splash_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage> getPages = [
  GetPage(
    name: RConst.splashScreen,
    page: () => const SplashScreen(),
    transitionDuration: routeTransitionDuration
  ),

  GetPage(
    name: RConst.introScreen,
    page: () => const IntroScreen(),
    transition: Transition.cupertino,
    transitionDuration: routeTransitionDuration
  ),

  GetPage(
      name: RConst.loginScreen,
      page: () => const LoginScreen(),
      transition: Transition.cupertino,
      transitionDuration: routeTransitionDuration
  ),
  GetPage(
      name: RConst.registerScreen,
      page: () => const RegisterScreen(),
      transition: Transition.cupertino,
      transitionDuration: routeTransitionDuration
  ),
  GetPage(
      name: RConst.smsOtpScreen,
      page: () => const SmsOtpScreen(),
      transition: Transition.cupertino,
      transitionDuration: routeTransitionDuration
  ),
  GetPage(
      name: RConst.businessRegisterScreen,
      page: () => const BusinessRegisterScreen(),
      transition: Transition.cupertino,
      transitionDuration: routeTransitionDuration
  ),
  GetPage(
      name: RConst.businessLogoScreen,
      page: () => const BusinessLogoScreen(),
      transition: Transition.cupertino,
      transitionDuration: routeTransitionDuration
  ),
  GetPage(
      name: RConst.kycScreen,
      page: () => const KycScreen(),
      transition: Transition.cupertino,
      transitionDuration: routeTransitionDuration
  ),
  GetPage(
      name: RConst.forgotScreen,
      page: () => const ForgotScreen(),
      transition: Transition.cupertino,
      transitionDuration: routeTransitionDuration
  ),
  GetPage(
      name: RConst.homeScreen,
      page: () => const HomeScreen(),
      transition: Transition.cupertino,
      transitionDuration: routeTransitionDuration
  ),
];