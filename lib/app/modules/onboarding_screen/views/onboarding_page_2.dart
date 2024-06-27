import 'package:ecommerce/app/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/onboarding_screen_controller.dart';

class OnboardingPageTwo extends StatelessWidget {
  final controller = Get.find<OnboardingScreenController>();
  OnboardingPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: RichText(
          text: TextSpan(
            text: '2',
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
            padding: const EdgeInsets.only(
              right: 17,
            ),
            child: GestureDetector(
              onTap: () {
                controller.skipPage(2);
              },
              child: Text(
                'Skip',
                style: GoogleFonts.montserrat(
                  color: neutralColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
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
            SizedBox(
              height: 48,
            ),
            SvgPicture.asset('assets/images/items/onboarding_2.svg'),
            SizedBox(
              height: 33.68,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
              ),
              child: Column(
                children: [
                  Text(
                    'Make Payment',
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
