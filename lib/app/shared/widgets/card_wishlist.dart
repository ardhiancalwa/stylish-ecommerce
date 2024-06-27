import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image/image.dart' as img;
import 'package:google_fonts/google_fonts.dart';

import '../color.dart';

class CardWishlist extends StatelessWidget {
  final String? productImage;
  final String? productName;
  final String? productDescription;
  final String? price;
  final String? sumRate;

  CardWishlist({
    super.key,
    required this.productImage,
    required this.productName,
    required this.productDescription,
    required this.price,
    required this.sumRate,
  });

  Future<img.Image> _loadImage(String assetPath) async {
    final ByteData data = await rootBundle.load(assetPath);
    return img.decodeImage(data.buffer.asUint8List())!;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<img.Image>(
      future: _loadImage('assets/images/products/$productImage'),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          final imageHeight = snapshot.data!.height + 109.0;
          return Container(
            height: imageHeight,
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
                  child: Image.asset('assets/images/products/$productImage'),
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
                        productName!,
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
                        productDescription!,
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
                        price!,
                        style: GoogleFonts.montserrat(
                          color: neutralColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
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
                            sumRate!,
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
        } else {
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
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
