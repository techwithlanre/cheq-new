import 'package:cheq/config/route/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:is_first_run/is_first_run.dart';

class SplashController extends GetxController with GetSingleTickerProviderStateMixin {
  late Animation animation, delayedAnimation, muchDelayAnimation, transform, fadeAnimation;
  late AnimationController animationController;
  final storage = GetStorage();

  @override
  void onInit() {
    FocusManager.instance.primaryFocus?.unfocus();
    animationInit();
    super.onInit();
  }

  @override
  void onReady() {
    navigate();
    super.onReady();
  }

  void animationInit() {
    animationController = AnimationController(duration: const Duration(seconds: 1), vsync: this);
    animation = CurvedAnimation(parent: animationController, curve: Curves.easeOut);
    fadeAnimation = Tween(
        begin: 0.0,
        end: 1.0
    ).animate(animationController);
    animation.addListener(() => update());
    animationController.forward();
  }

  Future<void> navigate() async {
    bool firstRun = await IsFirstRun.isFirstRun();
    Future.delayed(const Duration(seconds: 3), () async {
      bool authenticated = storage.read('authenticated') ?? false;
      String route = authenticated ? RConst.homeScreen : firstRun ? RConst.introScreen : RConst.introScreen;
      Get.offAllNamed(route);
    });
  }
}