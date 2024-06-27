import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/color.dart';
import '../controllers/forgot_password_page_controller.dart';

class ForgotPasswordPageView extends GetView<ForgotPasswordPageController> {
  const ForgotPasswordPageView({Key? key}) : super(key: key);
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
              'Forgot\npassword?',
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
                    'assets/icons/mail.svg',
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
              height: 26,
            ),
            RichText(
              text: TextSpan(
                text: '* ',
                style: GoogleFonts.montserrat(
                  color: primaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  TextSpan(
                    text:
                        'We will send you a message to set or reset\nyour new password',
                    style: GoogleFonts.montserrat(
                      color: Color(0xff676767),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
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
                onPressed: () {},
                child: Text(
                  'Submit',
                  style: GoogleFonts.montserrat(
                    color: Color(0xffFFFFFF),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
