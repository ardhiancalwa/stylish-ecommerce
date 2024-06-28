import 'package:ecommerce/app/modules/shop_page/views/product/picture_1.dart';
import 'package:ecommerce/app/modules/shop_page/views/product/picture_2.dart';
import 'package:ecommerce/app/modules/shop_page/views/product/picture_3.dart';
import 'package:ecommerce/app/modules/shop_page/views/product/picture_4.dart';
import 'package:ecommerce/app/modules/shop_page/views/product/picture_5.dart';
import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:ecommerce/app/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../shared/widgets/card_wishlist.dart';
import '../../../shared/widgets/productSize.dart';
import '../controllers/shop_page_controller.dart';

class ShopPageView extends GetView<ShopPageController> {
  const ShopPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          title: Icon(Icons.arrow_back_ios_new_rounded),
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffF2F2F2),
                shape: CircleBorder(),
              ),
              onPressed: () {},
              child: SvgPicture.asset('assets/icons/chart.svg'),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 235,
                width: double.infinity,
                child: Stack(
                  children: [
                    PageView(
                      controller: controller.pageController,
                      children: [
                        PictureOne(),
                        PictureTwo(),
                        PictureThree(),
                        PictureFour(),
                        PictureFive(),
                      ],
                    ),
                    Container(
                      alignment: Alignment(0, 1.1),
                      child: SmoothPageIndicator(
                        controller: controller.pageController,
                        count: 5,
                        effect: WormEffect(
                          dotColor: Color(0xffDEDBDB),
                          activeDotColor: primaryColor,
                          dotHeight: 9,
                          dotWidth: 9,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Size: 7UK',
                      style: GoogleFonts.montserrat(
                        color: neutralColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        ProductSize(size: '6'),
                        SizedBox(width: 8),
                        ProductSize(size: '7'),
                        SizedBox(width: 8),
                        ProductSize(size: '8'),
                        SizedBox(width: 8),
                        ProductSize(size: '9'),
                        SizedBox(width: 8),
                        ProductSize(size: '10'),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Nike Sneakers',
                      style: GoogleFonts.montserrat(
                        color: neutralColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Vision Alta Men’s Shoes Size (All Colours)',
                      style: GoogleFonts.montserrat(
                        color: neutralColor,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        RatingBar(
                          initialRating: 4,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 14,
                          ratingWidget: RatingWidget(
                              full: SvgPicture.asset(
                                  'assets/icons/full_rate.svg'),
                              half: SvgPicture.asset(
                                  'assets/icons/half_rate.svg'),
                              empty: SvgPicture.asset(
                                  'assets/icons/half_rate.svg')),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          '56,890',
                          style: GoogleFonts.montserrat(
                            color: Color(0xffA4A9B3),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          '₹2,999',
                          style: GoogleFonts.montserrat(
                            color: Color(0xff808488),
                            fontSize: 14,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '₹1,500',
                          style: GoogleFonts.montserrat(
                            color: neutralColor,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '50% Off',
                          style: GoogleFonts.montserrat(
                            color: Color(0xffFA7189),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Product Details',
                      style: GoogleFonts.montserrat(
                        color: neutralColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    RichText(
                      text: TextSpan(
                        text:
                            'Perhaps the most iconic sneaker of all-time, this original "Chicago"? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...',
                        style: GoogleFonts.montserrat(
                          color: neutralColor,
                          fontSize: 12,
                        ),
                        children: [
                          TextSpan(
                            text: 'More',
                            style: GoogleFonts.montserrat(
                              color: Color(0xffFA7189),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 24,
                          width: 97,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: Color(0xff828282),
                            ),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icons/map.svg'),
                              Text(
                                'Nearest Store',
                                style: GoogleFonts.montserrat(
                                  fontSize: 10,
                                  color: Color(0xff828282),
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 24,
                          width: 46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: Color(0xff828282),
                            ),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icons/lock.svg'),
                              Text(
                                'VIP',
                                style: GoogleFonts.montserrat(
                                  fontSize: 10,
                                  color: Color(0xff828282),
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 24,
                          width: 96,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: Color(0xff828282),
                            ),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icons/return.svg'),
                              Text(
                                'Return policy',
                                style: GoogleFonts.montserrat(
                                  fontSize: 10,
                                  color: Color(0xff828282),
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 36,
                              width: 136,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xff3F92FF),
                                    Color(0xff0B3689),
                                  ],
                                  begin: Alignment.topLeft,
                                  tileMode: TileMode.clamp,
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(4),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(4),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 18,
                                  right: 8,
                                  top: 6,
                                  bottom: 8,
                                ),
                                child: Text(
                                  'Go to cart',
                                  textAlign: TextAlign.right,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                gradient: RadialGradient(
                                  colors: [
                                    Color(0xff3F92FF),
                                    Color(0xff0B3689),
                                  ],
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(
                                  'assets/icons/cart.svg',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.PROFILE_PAGE);
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 36,
                                width: 136,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xff71F9A9),
                                      Color(0xff31B769),
                                    ],
                                    begin: Alignment.topLeft,
                                    tileMode: TileMode.clamp,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(4),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(4),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 18,
                                    right: 8,
                                    top: 6,
                                    bottom: 8,
                                  ),
                                  child: Text(
                                    'Buy Now',
                                    textAlign: TextAlign.right,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 42,
                                width: 42,
                                decoration: BoxDecoration(
                                  gradient: RadialGradient(
                                    colors: [
                                      Color(0xff71F9A9),
                                      Color(0xff31B769),
                                    ],
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                    'assets/icons/touch.svg',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffFFCCD5),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 26,
                          top: 11,
                          bottom: 11,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Delivery in',
                              style: GoogleFonts.montserrat(
                                color: neutralColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '1 within Hour',
                              style: GoogleFonts.poppins(
                                color: neutralColor,
                                fontSize: 21,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 48,
                          width: 182,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffD9D9D9),
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/icons/eye.svg'),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'View Similar',
                                  style: GoogleFonts.montserrat(
                                    color: neutralColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Container(
                          height: 48,
                          width: 182,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffD9D9D9),
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/icons/compare.svg'),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Add to compare',
                                  style: GoogleFonts.montserrat(
                                    color: neutralColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Similiar To',
                      style: GoogleFonts.montserrat(
                        color: neutralColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '282+ Iteams ',
                            style: GoogleFonts.montserrat(
                              color: neutralColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 24,
                                width: 61,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 15,
                                      offset: Offset(0, 1),
                                    ),
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Sort',
                                      style: GoogleFonts.montserrat(
                                        color: neutralColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SvgPicture.asset(
                                      'assets/icons/sort.svg',
                                      width: 16,
                                      height: 16,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Container(
                                height: 24,
                                width: 67,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 15,
                                      offset: Offset(0, 1),
                                    ),
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Filter',
                                      style: GoogleFonts.montserrat(
                                        color: neutralColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SvgPicture.asset(
                                      'assets/icons/filter.svg',
                                      width: 16,
                                      height: 16,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 650,
                      child: Obx(
                        () => MasonryGridView.builder(
                          gridDelegate:
                              SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          itemCount: controller.data.length,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          itemBuilder: (context, index) {
                            final item = controller.data[index];
                            return CardWishlist(
                              productImage: item['image'],
                              productName: item['name'],
                              productDescription: item['description'],
                              price: item['price'],
                              sumRate: item['sum_rate'],
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
