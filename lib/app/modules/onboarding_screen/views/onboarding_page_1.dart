import 'package:ecommerce/app/modules/onboarding_screen/controllers/onboarding_screen_controller.dart';
import 'package:ecommerce/app/modules/onboarding_screen/views/onboarding_page_3.dart';
import 'package:ecommerce/app/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPageOne extends StatelessWidget {
  final controller = Get.find<OnboardingScreenController>();
  OnboardingPageOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: RichText(
          text: TextSpan(
            text: '1',
            style: GoogleFonts.montserrat(
              color: neutralColor,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
            children: [
              TextSpan(
                text: '/3',
                style: TextStyle(
                  color: Color(0xffA0A0A1),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 17),
            child: GestureDetector(
              onTap: () {
                controller.skipPage(2);
              },
              child: Text(
                'Skip',
                style: GoogleFonts.montserrat(
                  color: neutralColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/items/onboarding_1.svg'),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 15,
              ),
              child: Column(
                children: [
                  Text(
                    'Choose Products',
                    style: GoogleFonts.montserrat(
                      color: neutralColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Color(0xffA8A8A9),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.2,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
