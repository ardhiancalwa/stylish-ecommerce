import 'package:ecommerce/app/shared/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/widgets/list_payment.dart';
import '../controllers/shipping_page_controller.dart';

class ShippingPageView extends GetView<ShippingPageController> {
  const ShippingPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded)),
          title: Text(
            'Checkout',
            style: GoogleFonts.montserrat(
              color: neutralColor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            SizedBox(
              height: 17,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Order',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffA8A8A9),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '₹ 7,000',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffA8A8A9),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shipping',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffA8A8A9),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '₹ 30',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffA8A8A9),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: GoogleFonts.montserrat(
                          color: neutralColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '₹ 7,030',
                        style: GoogleFonts.montserrat(
                          color: neutralColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Divider(
                    color: Color(0xffC4C4C4),
                    thickness: 1.5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Text(
                'Payment',
                style: GoogleFonts.montserrat(
                  color: Color(0xff222222),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Column(
                children: [
                  Obx(() => PaymentList(
                        image: 'visa',
                        isSelected: controller.selectedImage.value == 'visa',
                        onTap: () {
                          controller.selectImage('visa');
                        },
                      )),
                  SizedBox(
                    height: 25,
                  ),
                  Obx(() => PaymentList(
                        image: 'paypal2',
                        isSelected: controller.selectedImage.value == 'paypal2',
                        onTap: () {
                          controller.selectImage('paypal2');
                        },
                      )),
                  SizedBox(
                    height: 25,
                  ),
                  Obx(() => PaymentList(
                        image: 'maestro2',
                        isSelected:
                            controller.selectedImage.value == 'maestro2',
                        onTap: () {
                          controller.selectImage('maestro2');
                        },
                      )),
                  SizedBox(
                    height: 25,
                  ),
                  Obx(() => PaymentList(
                        image: 'apple2',
                        isSelected: controller.selectedImage.value == 'apple2',
                        onTap: () {
                          controller.selectImage('apple2');
                        },
                      )),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 59,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      onPressed: () {
                        Get.dialog(
                          Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 22),
                              child: Container(
                                height: 201,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 26,
                                    ),
                                    SvgPicture.asset(
                                      'assets/images/items/success.svg',
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Text(
                                      'Payment done successfully.',
                                      style: GoogleFonts.montserrat(
                                        color: Color(0xff222222),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        decoration: TextDecoration.none,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      child: Text(
                        'Continue',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
