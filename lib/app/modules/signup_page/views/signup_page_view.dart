import 'package:ecommerce/app/modules/signup_page/views/getStarted_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/color.dart';
import '../controllers/signup_page_controller.dart';

class SignupPageView extends GetView<SignupPageController> {
  const SignupPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 63,
            ),
            Text(
              'Create an\nAccount',
              style: GoogleFonts.montserrat(
                fontSize: 36,
                color: neutralColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 36,
            ),
            TextField(
              autocorrect: false,
              cursorColor: primaryColor,
              keyboardType: TextInputType.emailAddress,
              controller: controller.emailC,
              cursorErrorColor: neutralColor,
              obscureText: false,
              decoration: InputDecoration(
                fillColor: Color(0xffF3F3F3),
                hintText: 'Username or Email',
                hintStyle: GoogleFonts.montserrat(
                  color: Color(0xff676767),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    'assets/icons/user.svg',
                    height: 24,
                    width: 24,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color(0xffA8A8A9),
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color(0xffA8A8A9),
                    width: 1,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 31,
            ),
            Obx(
              () => TextField(
                autocorrect: false,
                cursorColor: primaryColor,
                keyboardType: TextInputType.text,
                controller: controller.passwordC,
                cursorErrorColor: neutralColor,
                obscureText: controller.obscurePassText.value,
                decoration: InputDecoration(
                  fillColor: Color(0xffF3F3F3),
                  hintText: 'Password',
                  hintStyle: GoogleFonts.montserrat(
                    color: Color(0xff676767),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(
                      'assets/icons/password.svg',
                      height: 24,
                      width: 24,
                    ),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: controller.toggleObscurePassText,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: controller.obscurePassText.value
                          ? Icon(Icons.visibility)
                          : SvgPicture.asset('assets/icons/visibility.svg'),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color(0xffA8A8A9),
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color(0xffA8A8A9),
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 31,
            ),
            Obx(
              () => TextField(
                autocorrect: false,
                cursorColor: primaryColor,
                keyboardType: TextInputType.text,
                controller: controller.confirmPasswordC,
                cursorErrorColor: neutralColor,
                obscureText: controller.obscureConfirmPassText.value,
                decoration: InputDecoration(
                  fillColor: Color(0xffF3F3F3),
                  hintText: 'Confirm Password',
                  hintStyle: GoogleFonts.montserrat(
                    color: Color(0xff676767),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(
                      'assets/icons/password.svg',
                      height: 24,
                      width: 24,
                    ),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: controller.toggleObscureConfirmText,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: controller.obscureConfirmPassText.value
                          ? Icon(Icons.visibility)
                          : SvgPicture.asset('assets/icons/visibility.svg'),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color(0xffA8A8A9),
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color(0xffA8A8A9),
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 19,
            ),
            RichText(
              text: TextSpan(
                text: 'By clicking the ',
                style: GoogleFonts.montserrat(
                  color: Color(0xff676767),
                  fontSize: 12,
                ),
                children: [
                  TextSpan(
                    text: 'Register',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                  TextSpan(text: ' button, you agree\nto the police offer'),
                ],
              ),
            ),
            SizedBox(
              height: 38,
            ),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    )),
                onPressed: () {
                  if (controller.emailC.text == "admin" &&
                      controller.passwordC.text == "123" &&
                      controller.confirmPasswordC.text == "123") {
                    Get.snackbar(
                      'Berhasil Registrasi',
                      'Akun anda telah berhasil registrasi',
                      backgroundColor: Colors.green[400],
                      colorText: Color(0xffFAFAFA),
                      duration: Duration(milliseconds: 1000),
                    );
                    Future.delayed(Duration(milliseconds: 1000), () {
                      Get.to(() => GetStartedView());
                    });
                  } else {
                    Get.snackbar(
                      'Error',
                      'Please check your email and password',
                      backgroundColor: primaryColor,
                      colorText: Color(0xffFAFAFA),
                    );
                  }
                },
                child: Text(
                  'Create Account',
                  style: GoogleFonts.montserrat(
                    color: Color(0xffFFFFFF),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '- OR Continue with -',
                  style: GoogleFonts.montserrat(
                    color: Color(0xff575757),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 54,
                      height: 54,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFCF3F6),
                          shape: CircleBorder(
                            side: BorderSide(color: primaryColor),
                          ),
                          padding:
                              EdgeInsets.all(12), // Adjust padding as needed
                        ),
                        onPressed: () {},
                        child: Image.asset('assets/icons/google.png'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 54,
                      height: 54,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFCF3F6),
                          shape: CircleBorder(
                            side: BorderSide(color: primaryColor),
                          ),
                          padding:
                              EdgeInsets.all(12), // Adjust padding as needed
                        ),
                        onPressed: () {},
                        child: Icon(
                          Icons.apple,
                          color: neutralColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 54,
                      height: 54,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFCF3F6),
                          shape: CircleBorder(
                            side: BorderSide(color: primaryColor),
                          ),
                          padding:
                              EdgeInsets.all(12), // Adjust padding as needed
                        ),
                        onPressed: () {},
                        child: Image.asset('assets/icons/facebook.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 28,
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center the row content
                  children: [
                    Text(
                      'I Already Have an Account ',
                      style: GoogleFonts.montserrat(
                        color: Color(0xff575757),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(
                        'Login',
                        style: GoogleFonts.montserrat(
                          decoration: TextDecoration.underline,
                          decorationColor: primaryColor,
                          color: primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
