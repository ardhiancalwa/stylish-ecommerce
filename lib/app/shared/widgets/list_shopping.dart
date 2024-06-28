import 'package:ecommerce/app/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoppingList extends StatelessWidget {
  String? image;
  String? name;
  String? rate;
  String? price;
  String? discount;
  String? firstPrice;
  ShoppingList({
    this.image,
    this.name,
    this.rate,
    this.price,
    this.discount,
    this.firstPrice,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 191,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 15,
              offset: Offset(0, 1),
            )
          ]),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.asset('assets/images/items/$image.png'),
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name!,
                    style: GoogleFonts.montserrat(
                      color: neutralColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'Varians:',
                        style: GoogleFonts.montserrat(
                          color: neutralColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 17,
                        width: 39,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                          border: Border.all(
                            color: neutralColor,
                            width: 1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Black',
                            style: GoogleFonts.montserrat(
                                fontSize: 10,
                                color: neutralColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 17,
                        width: 39,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                          border: Border.all(
                            color: neutralColor,
                            width: 1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Red',
                            style: GoogleFonts.montserrat(
                                fontSize: 10,
                                color: neutralColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      Text(
                        rate!,
                        style: GoogleFonts.montserrat(
                          color: neutralColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RatingBar(
                        initialRating: 4,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 14,
                        ratingWidget: RatingWidget(
                            full:
                                SvgPicture.asset('assets/icons/full_rate.svg'),
                            half:
                                SvgPicture.asset('assets/icons/half_rate.svg'),
                            empty:
                                SvgPicture.asset('assets/icons/half_rate.svg')),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 29,
                        width: 84,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCACACA),
                            width: 1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            price!,
                            style: GoogleFonts.montserrat(
                              color: neutralColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 11,
                      ),
                      Column(
                        children: [
                          Text(
                            'upto $discount% off',
                            style: GoogleFonts.montserrat(
                              color: Color(0xffEB3030),
                              fontSize: 8,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            firstPrice!,
                            style: GoogleFonts.montserrat(
                              color: Color(0xffA7A7A7),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Divider(
            color: Color(0xffBBBBBB),
            thickness: 0.5,
          ),
          // SizedBox(
          //   height: 12,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Order (1)   :',
                style: GoogleFonts.montserrat(
                  color: neutralColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                price!,
                style: GoogleFonts.montserrat(
                  color: neutralColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
