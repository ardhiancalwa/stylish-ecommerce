import 'package:ecommerce/app/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldProfile extends StatelessWidget {
  String nameTextField;
  bool isObsecure;
  TextEditingController controller;
  String hintText;
  TextInputType keyboardType;
  TextFieldProfile({
    required this.nameTextField,
    required this.isObsecure,
    required this.controller,
    required this.hintText,
    required this.keyboardType,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          nameTextField,
          style: GoogleFonts.montserrat(
            color: neutralColor,
            fontSize: 12,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        TextField(
          controller: controller,
          autocorrect: false,
          cursorColor: primaryColor,
          cursorErrorColor: Colors.red,
          enableSuggestions: true,
          obscureText: isObsecure,
          keyboardType: keyboardType,
          obscuringCharacter: '*',
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Color(0xffC8C8C8),
                    width: 1,
                  )),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  )),
              hintText: hintText,
              hintStyle: GoogleFonts.montserrat(
                color: neutralColor,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              )),
        )
      ],
    );
  }
}
