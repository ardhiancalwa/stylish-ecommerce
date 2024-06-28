import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:ecommerce/app/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/place_order_page_controller.dart';

class PlaceOrderPageView extends GetView<PlaceOrderPageController> {
  const PlaceOrderPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded),
          ),
          title: Text(
            'Shopping Bag',
            style: GoogleFonts.montserrat(
              color: neutralColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border_rounded,
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 37,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Row(
                children: [
                  Image.asset('assets/images/items/shopping_bag_kurta.png'),
                  SizedBox(
                    width: 21,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Women\'s Casual Wear',
                        style: GoogleFonts.montserrat(
                          color: neutralColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Checked Single-Breasted Blazer',
                        style: GoogleFonts.montserrat(
                          color: neutralColor,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 25,
                                width: 86,
                                decoration: BoxDecoration(
                                  color: Color(0xffF2F2F2),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 6,
                                    top: 4,
                                    bottom: 4,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                        text: 'Size  ',
                                        style: GoogleFonts.montserrat(
                                          color: neutralColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: '42',
                                            style: GoogleFonts.montserrat(
                                              color: neutralColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ]),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                top: -5,
                                child: Icon(Icons.keyboard_arrow_down_rounded),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Stack(
                            children: [
                              Container(
                                height: 25,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: Color(0xffF2F2F2),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 6,
                                    top: 4,
                                    bottom: 4,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                        text: 'Qty   ',
                                        style: GoogleFonts.montserrat(
                                          color: neutralColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: '1',
                                            style: GoogleFonts.montserrat(
                                              color: neutralColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ]),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                top: -5,
                                child: Icon(Icons.keyboard_arrow_down_rounded),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Text(
                            'Delivery by',
                            style: GoogleFonts.montserrat(
                              color: neutralColor,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '10 May 2XXX',
                            style: GoogleFonts.montserrat(
                              color: neutralColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 54,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/coupons.svg'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Apply Coupons',
                            style: GoogleFonts.montserrat(
                              color: neutralColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Select',
                        style: GoogleFonts.montserrat(
                          color: primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  Divider(
                    color: Color(0xffCACACA),
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    'Order Payment Details',
                    style: GoogleFonts.montserrat(
                      color: neutralColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Order Amounts',
                        style: GoogleFonts.montserrat(
                          color: neutralColor,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '₹ 7,000.00',
                        style: GoogleFonts.montserrat(
                          color: neutralColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Convenience',
                            style: GoogleFonts.montserrat(
                              color: neutralColor,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Text(
                            'Know More',
                            style: GoogleFonts.montserrat(
                              color: primaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Apply Coupon',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffEA1712),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Fee',
                        style: GoogleFonts.montserrat(
                          color: neutralColor,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Free',
                        style: GoogleFonts.montserrat(
                          color: primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 41,
                  ),
                  Divider(
                    color: Color(0xffCACACA),
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 29,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Order Total',
                        style: GoogleFonts.montserrat(
                          color: neutralColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '₹ 7,000.00',
                        style: GoogleFonts.montserrat(
                          color: neutralColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'EMI  Available ',
                        style: GoogleFonts.montserrat(
                          color: neutralColor,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      Text(
                        'Details',
                        style: GoogleFonts.montserrat(
                          color: primaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 43,
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffF8F8F8),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                border: Border.all(
                  color: Color(0xff979797),
                  width: 0,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 38,
                    ),
                    child: Column(
                      children: [
                        Text(
                          '₹ 7,000.00',
                          style: GoogleFonts.montserrat(
                            color: neutralColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Details',
                          style: GoogleFonts.montserrat(
                            color: primaryColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 28,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {
                          Get.toNamed(Routes.SHIPPING_PAGE);
                        },
                        child: Text(
                          'Proceed to Payment',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          ),
                        )),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
