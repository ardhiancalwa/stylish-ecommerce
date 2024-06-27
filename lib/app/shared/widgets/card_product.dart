import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color.dart';

class CardProduct extends StatelessWidget {
  String productImage;
  String productName;
  String productDescription;
  String priceDiscount;
  String price;
  String discount;
  String sumRate;
  CardProduct({
    super.key,
    required this.productImage,
    required this.productName,
    required this.productDescription,
    required this.priceDiscount,
    required this.price,
    required this.discount,
    required this.sumRate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 241,
      width: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 15,
            offset: Offset(0, 1),
          )
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset('assets/images/items/$productImage.png'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8,
                ),
                Text(
                  productName,
                  style: GoogleFonts.montserrat(
                    color: neutralColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  productDescription,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: GoogleFonts.montserrat(
                    color: neutralColor,
                    fontSize: 10,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  priceDiscount,
                  style: GoogleFonts.montserrat(
                    color: neutralColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      price,
                      style: GoogleFonts.montserrat(
                        color: Color(0xff808488),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      discount,
                      style: GoogleFonts.montserrat(
                        color: Color(0xffFE735C),
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 4,
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
                          full: SvgPicture.asset('assets/icons/full_rate.svg'),
                          half: SvgPicture.asset('assets/icons/half_rate.svg'),
                          empty:
                              SvgPicture.asset('assets/icons/half_rate.svg')),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      sumRate,
                      style: GoogleFonts.montserrat(
                        color: Color(0xffA4A9B3),
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
