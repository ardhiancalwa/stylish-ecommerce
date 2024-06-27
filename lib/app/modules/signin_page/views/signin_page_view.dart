import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:ecommerce/app/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/signin_page_controller.dart';

class SigninPageView extends GetView<SigninPageController> {
  SigninPageView({Key? key}) : super(key: key);
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
              'Welcome\nBack',
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
                obscureText: controller.obscureText.value,
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
                    onTap: controller.toggleObscureText,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: controller.obscureText.value
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
              height: 9,
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.FORGOT_PASSWORD_PAGE);
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: GoogleFonts.montserrat(
                    color: primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 52,
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
                      controller.passwordC.text == "123") {
                    Get.snackbar(
                      'Berhasil Login',
                      'Akun anda telah berhasil login',
                      backgroundColor: Colors.green[400],
                      colorText: Color(0xffFAFAFA),
                      duration: Duration(milliseconds: 1000),
                    );
                    Future.delayed(Duration(milliseconds: 1000), () {
                      Get.offAllNamed(Routes.BOTTOM_NAVIAGTION_BAR);
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
                  'Login',
                  style: GoogleFonts.montserrat(
                    color: Color(0xffFFFFFF),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 75,
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
                      'Create An Account ',
                      style: GoogleFonts.montserrat(
                        color: Color(0xff575757),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.SIGNUP_PAGE);
                      },
                      child: Text(
                        'Sign Up',
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
