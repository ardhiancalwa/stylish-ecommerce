import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListFeatured extends StatelessWidget {
  String nameFeatured;
  String imageFeatured;
  ListFeatured({
    super.key,
    required this.nameFeatured,
    required this.imageFeatured,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56,
          width: 56,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/images/items/$imageFeatured'),
            ),
          ),
        ),
        Text(
          nameFeatured,
          style: GoogleFonts.montserrat(
            color: Color(0xff21003D),
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
