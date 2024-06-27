import 'package:ecommerce/app/modules/onboarding_screen/views/onboarding_page_1.dart';
import 'package:ecommerce/app/modules/onboarding_screen/views/onboarding_page_2.dart';
import 'package:ecommerce/app/modules/onboarding_screen/views/onboarding_page_3.dart';
import 'package:ecommerce/app/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../routes/app_pages.dart';
import '../controllers/onboarding_screen_controller.dart';

class OnboardingScreenView extends GetView<OnboardingScreenController> {
  OnboardingScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.onPageChanged,
            children: [
              OnboardingPageOne(),
              OnboardingPageTwo(),
              OnboardingPageThree(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // back
                Obx(
                  () => controller.onFirstPage.value
                      ? SizedBox(width: 35)
                      : GestureDetector(
                          onTap: controller.previousPage,
                          child: Text(
                            'Prev',
                            style: GoogleFonts.montserrat(
                              color: Color(0xffC4C4C4),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                ),
                SmoothPageIndicator(
                  controller: controller.pageController,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    dotColor: Color(0xff17223B).withOpacity(0.2),
                    activeDotColor: Color(0xff17223B),
                    dotHeight: 8,
                    dotWidth: 20,
                  ),
                ),
                Obx(() => controller.onLastPage.value
                    ? GestureDetector(
                        onTap: controller.goToSigIn,
                        child: Text(
                          'Done',
                          style: GoogleFonts.montserrat(
                            color: primaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: controller.nextPage,
                        child: Text(
                          'Next',
                          style: GoogleFonts.montserrat(
                            color: primaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
