import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroController extends GetxController {
  final index = 0.obs;
  final pageController = PageController().obs;

  void nextPage(){
    pageController.value.animateToPage(index.value + 1,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeIn
    );
  }

  void previousPage(){
    pageController.value.animateToPage(index.value -1,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeIn
    );
  }
}