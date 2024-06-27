import 'package:ecommerce/app/shared/color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/app_pages.dart';
import '../controllers/splashscreen_page_controller.dart';

class SplashscreenPageView extends GetView<SplashscreenPageController> {
  const SplashscreenPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), (() {
      Get.offAllNamed(Routes.ONBOARDING_SCREEN);
    }));
    return Scaffold(
        body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/items/logo.svg'),
          SizedBox(
            width: 9,
          ),
          Text(
            "Stylist",
            style: GoogleFonts.libreCaslonText(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: primaryColor,
            ),
          )
        ],
      ),
    ));
  }
}
