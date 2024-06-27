import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:ecommerce/app/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/items/getstarted.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.7),
              ],
              begin: Alignment.topCenter,
              stops: [0, 1.5],
            ),
          ),
          child: Center(
              child: Column(
            children: [
              SizedBox(
                height: 552,
              ),
              Text(
                'You want\nAuthentic, here\nyou go!',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: Color(0xffFAFAFA),
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                'Find it here, buy it now!',
                style: GoogleFonts.montserrat(
                  color: Color(0xffF2F2F2),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 58,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        )),
                    onPressed: () {
                      Get.offAllNamed(Routes.BOTTOM_NAVIAGTION_BAR);
                    },
                    child: Text(
                      'Get Started',
                      style: GoogleFonts.montserrat(
                        color: Color(0xffFFFFFF),
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
