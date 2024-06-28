import 'package:ecommerce/app/shared/color.dart';
import 'package:ecommerce/app/shared/widgets/list_shopping.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/checkout_page_controller.dart';

class CheckoutPageView extends GetView<CheckoutPageController> {
  const CheckoutPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
            ),
          ),
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Divider(
                color: Color(0xffC6C6C6),
                thickness: 0.5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/map2.svg'),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Delivery Address',
                          style: GoogleFonts.montserrat(
                            color: neutralColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 79,
                          width: 241,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 15,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 12,
                                  top: 12,
                                  bottom: 12,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Address : ',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: neutralColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      '216 St Paul\'s Rd, London N1 2LL, UK Contact :  +44-784232',
                                      style: GoogleFonts.montserrat(
                                        color: neutralColor,
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                right: 8,
                                top: 8,
                                child: SvgPicture.asset(
                                    'assets/icons/edit_address.svg'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 78,
                          width: 78,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 15,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(27.0),
                            child: SvgPicture.asset(
                                'assets/icons/add_address.svg'),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Scrollbar(
                      thickness: 5,
                      child: SizedBox(
                        height: 600,
                        child: ListView.builder(
                          itemCount: controller.data.length,
                          itemBuilder: (context, index) {
                            final item = controller.data[index];
                            return ShoppingList(
                              discount: item['discount'],
                              image: item['image'],
                              name: item['name'],
                              price: item['price'],
                              rate: item['rate'],
                              firstPrice: item['firstPrice'],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
