import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class OnboardingScreenController extends GetxController {
  var onLastPage = false.obs;
  var onFirstPage = false.obs;
  PageController pageController = PageController();

  void onPageChanged(int index) {
    onLastPage.value = index == 2;
    onFirstPage.value = index == 0;
  }

  void skipPage(int index) {
    pageController.jumpToPage(2);
  }

  void nextPage() {
    pageController.nextPage(
        duration: Duration(milliseconds: 500), curve: Curves.easeIn);
  }

  void previousPage() {
    pageController.previousPage(
        duration: Duration(milliseconds: 500), curve: Curves.easeOut);
  }

  void goToSigIn() {
    Get.offAndToNamed(Routes.SIGNIN_PAGE);
  }
}
