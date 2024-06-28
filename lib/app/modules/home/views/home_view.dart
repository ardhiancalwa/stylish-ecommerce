import 'package:ecommerce/app/modules/home/views/iklan/iklan_page_1.dart';
import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:ecommerce/app/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../shared/widgets/card_product.dart';
import '../../../shared/widgets/list_featured.dart';
import '../controllers/home_controller.dart';
import 'iklan/iklan_page_2.dart';
import 'iklan/iklan_page_3.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: SvgPicture.asset('assets/icons/humberger.svg'),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/items/logo.svg',
              height: 31,
              width: 38,
            ),
            SizedBox(
              width: 9,
            ),
            Text(
              'Stylish',
              style: GoogleFonts.libreCaslonText(
                  color: Color(0xff4392F9),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  height: 22),
            )
          ],
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: GestureDetector(
              onTap: () {              },
              child: Image.asset('assets/images/items/profile_picture.png'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 15,
                        offset: Offset(0, 1))
                  ],
                ),
                child: TextField(
                  autocorrect: false,
                  controller: controller.searchC,
                  cursorColor: primaryColor,
                  cursorErrorColor: Colors.red,
                  keyboardType: TextInputType.text,
                  enableSuggestions: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    // border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 16,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/search.svg',
                        width: 24,
                        height: 24,
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        'assets/icons/mic.svg',
                      ),
                    ),
                    hintText: 'Search any Product...',
                    hintStyle: GoogleFonts.montserrat(
                      color: Color(0xffBBBBBB),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All Featured',
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              Container(
                height: 87,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 15,
                        offset: Offset(0, 1),
                      )
                    ]),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ListFeatured(
                          imageFeatured: 'beauty.png',
                          nameFeatured: 'Beauty',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        ListFeatured(
                          imageFeatured: 'fashion.png',
                          nameFeatured: 'Fashion',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        ListFeatured(
                          imageFeatured: 'kids.png',
                          nameFeatured: 'Kids',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        ListFeatured(
                          imageFeatured: 'mens.png',
                          nameFeatured: 'Mens',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        ListFeatured(
                          imageFeatured: 'womens.png',
                          nameFeatured: 'Womens',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        ListFeatured(
                          imageFeatured: 'gifts.png',
                          nameFeatured: 'Gifts',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SizedBox(
                  height: 220,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      PageView(
                        controller: controller.pageController,
                        children: [
                          IklanPageOne(),
                          IklanPageTwo(),
                          IklanPageThree(),
                        ],
                      ),
                      Container(
                        alignment: Alignment(0, 0.95),
                        child: SmoothPageIndicator(
                          controller: controller.pageController,
                          count: 3,
                          effect: WormEffect(
                            dotColor: Color(0xffDEDBDB),
                            activeDotColor: Color(0xffFFA3B3),
                            dotHeight: 9,
                            dotWidth: 9,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xff4392F9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Deal of the Day',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset('assets/icons/clock.svg'),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    '22h 55m 20s remaining',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 85,
                          height: 32,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                                side: BorderSide(color: Colors.white, width: 1),
                              ),
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  'View all',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                SvgPicture.asset(
                                  'assets/icons/arrow_next.svg',
                                  width: 16,
                                  height: 16,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    children: [
                      CardProduct(
                        productImage: 'product_kurta',
                        productName: 'Women Printed Kurta',
                        productDescription:
                            'Neque porro quisquam est qui dolorem ipsum quia',
                        priceDiscount: '₹1500',
                        price: '₹2499',
                        discount: '40%Off',
                        sumRate: '56890',
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      CardProduct(
                        productImage: 'product_roshan',
                        productName: 'HRX by Hrithik Roshan',
                        productDescription:
                            'Neque porro quisquam est qui dolorem ipsum quia',
                        priceDiscount: '₹2499',
                        price: '₹4999',
                        discount: '50%Off',
                        sumRate: '344567',
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      CardProduct(
                        productImage: 'product_shampoo',
                        productName: 'Philips BHH880/10',
                        productDescription:
                            'Hair Straightening Brush With Keratin Infused Bristles (Black).',
                        priceDiscount: '₹999',
                        price: '₹1999',
                        discount: '50%Off',
                        sumRate: '646776  ',
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      CardProduct(
                        productImage: 'product_watch',
                        productName: 'TITAN Men Watch- 1806N',
                        productDescription:
                            'This Titan watch in Black color is I wanted to buy for a long time',
                        priceDiscount: '₹1500',
                        price: '₹3500',
                        discount: '60%Off',
                        sumRate: '15007',
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  height: 84,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/items/special_offer.png'),
                      SizedBox(
                        width: 24,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Special Offers',
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: neutralColor,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: neutralColor.withOpacity(0.2),
                                      style: BorderStyle.solid,
                                      width: 2,
                                      strokeAlign:
                                          BorderSide.strokeAlignCenter),
                                ),
                                child: Center(
                                  child: Text('😱'),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'We make sure you get the\noffer you need at best prices',
                            style: TextStyle(
                              color: neutralColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Stack(
                  children: [
                    Container(
                      height: 172,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 4),
                      child: Container(
                        height: 155,
                        width: double.infinity,
                        color: Color(0xffE7E7EB).withOpacity(0.3),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Image.asset(
                            'assets/images/items/percikan_emas.png'),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      child:
                          Image.asset('assets/images/items/rectangle_gold.png'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 32,
                          ),
                          child: Image.asset('assets/images/items/shoes.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            children: [
                              Text(
                                'Flat and Heels',
                                style: GoogleFonts.montserrat(
                                  color: Color(0xff232327),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Stand a chance to get rewarded',
                                style: TextStyle(
                                  color: Color(0xff232327),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: SizedBox(
                                  height: 24,
                                  width: 96,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: primaryColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 4,
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Text(
                                          'Visit Now',
                                          style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        SvgPicture.asset(
                                          'assets/icons/arrow_next.svg',
                                          width: 16,
                                          height: 16,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffFD6E87),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Trending Products ',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset('assets/icons/calender.svg'),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Last Date 29/02/22',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 85,
                          height: 32,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                                side: BorderSide(color: Colors.white, width: 1),
                              ),
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  'View all',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                SvgPicture.asset(
                                  'assets/icons/arrow_next.svg',
                                  width: 16,
                                  height: 16,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    children: [
                      CardProduct(
                        productImage: 'product_kurta',
                        productName: 'Women Printed Kurta',
                        productDescription:
                            'Neque porro quisquam est qui dolorem ipsum quia',
                        priceDiscount: '₹1500',
                        price: '₹2499',
                        discount: '40%Off',
                        sumRate: '56890',
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      CardProduct(
                        productImage: 'product_roshan',
                        productName: 'HRX by Hrithik Roshan',
                        productDescription:
                            'Neque porro quisquam est qui dolorem ipsum quia',
                        priceDiscount: '₹2499',
                        price: '₹4999',
                        discount: '50%Off',
                        sumRate: '344567',
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      CardProduct(
                        productImage: 'product_shampoo',
                        productName: 'Philips BHH880/10',
                        productDescription:
                            'Hair Straightening Brush With Keratin Infused Bristles (Black).',
                        priceDiscount: '₹999',
                        price: '₹1999',
                        discount: '50%Off',
                        sumRate: '646776  ',
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      CardProduct(
                        productImage: 'product_watch',
                        productName: 'TITAN Men Watch- 1806N',
                        productDescription:
                            'This Titan watch in Black color is I wanted to buy for a long time',
                        priceDiscount: '₹1500',
                        price: '₹3500',
                        discount: '60%Off',
                        sumRate: '15007',
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  height: 270,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 15,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ]),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                        child:
                            Image.asset('assets/images/items/hot_summer.png'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'New Arrivals ',
                                style: GoogleFonts.montserrat(
                                  color: neutralColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Summer’ 25 Collections',
                                style: GoogleFonts.montserrat(
                                  color: neutralColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 28,
                            width: 89,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: primaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                  )),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Text(
                                    'View All',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  SvgPicture.asset(
                                      'assets/icons/arrow_next.svg'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: SizedBox(
                  height: 374,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sponserd',
                        style: GoogleFonts.montserrat(
                          color: neutralColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                              'assets/images/items/shoes_brown.png'),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'up to 50% Off',
                            style: GoogleFonts.montserrat(
                                color: neutralColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 15,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
