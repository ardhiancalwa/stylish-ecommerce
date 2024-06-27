import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPageController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  TextEditingController confirmPasswordC = TextEditingController();

  var obscurePassText = true.obs;
  var obscureConfirmPassText = true.obs;

  void toggleObscurePassText() {
    obscurePassText.value = !obscurePassText.value;
  }
  void toggleObscureConfirmText() {
    obscureConfirmPassText.value = !obscureConfirmPassText.value;
  }
}
