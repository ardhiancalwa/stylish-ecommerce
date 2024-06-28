import 'package:ecommerce/app/modules/shipping_page/controllers/shipping_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color.dart';

class PaymentList extends StatelessWidget {
  String image;
  final bool isSelected;
  final VoidCallback onTap;

  PaymentList({
    required this.image,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 59,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffF4F4F4),
          borderRadius: BorderRadius.circular(8),
          border: isSelected
              ? Border.all(
                  color: primaryColor,
                  width: 1.5,
                )
              : null,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/payments/$image.png'),
              Text(
                '*********2109',
                style: GoogleFonts.montserrat(
                    color: Color(0xff6E7179),
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
