import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:ecommerce/app/shared/color.dart';
import 'package:ecommerce/app/shared/widgets/textfiled_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/profile_page_controller.dart';

class ProfilePageView extends GetView<ProfilePageController> {
  const ProfilePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: Icon(
            Icons.arrow_back_ios_new_rounded,
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    height: 98,
                    width: 103,
                    child: Stack(
                      children: [
                        Image.asset('assets/images/items/profile.png'),
                        Positioned(
                          right: -10,
                          bottom: -5,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(
                                side: BorderSide(
                                  color: Colors.white,
                                  width: 3,
                                ),
                              ),
                              backgroundColor: Color(0xff4392F9),
                            ),
                            onPressed: () {},
                            child: SvgPicture.asset('assets/icons/edit.svg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Text(
                  'Personal Details',
                  style: GoogleFonts.montserrat(
                    color: neutralColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                TextFieldProfile(
                  nameTextField: 'Email Address',
                  isObsecure: false,
                  controller: controller.emailC,
                  hintText: 'aashifa@gmail.com',
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFieldProfile(
                  nameTextField: 'Password',
                  isObsecure: true,
                  controller: controller.passC,
                  hintText: '***********',
                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: 14,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Change Password',
                    style: GoogleFonts.plusJakartaSans(
                      color: primaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      decorationColor: primaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 36,
                ),
                Divider(
                  color: Color(0xffC4C4C4),
                  thickness: 0.5,
                ),
                SizedBox(
                  height: 34,
                ),
                Text(
                  'Business Address Details',
                  style: GoogleFonts.montserrat(
                    color: neutralColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                TextFieldProfile(
                  nameTextField: 'Pincode',
                  isObsecure: false,
                  controller: controller.pincodeC,
                  hintText: '450116',
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 28,
                ),
                TextFieldProfile(
                  nameTextField: 'Address',
                  isObsecure: false,
                  controller: controller.addressC,
                  hintText: '216 St Paul\'s Rd, ',
                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: 28,
                ),
                TextFieldProfile(
                  nameTextField: 'City',
                  isObsecure: false,
                  controller: controller.cityC,
                  hintText: 'London',
                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: 28,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'State',
                      style: GoogleFonts.montserrat(
                        color: neutralColor,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      controller: controller.stateC,
                      autocorrect: false,
                      cursorColor: primaryColor,
                      cursorErrorColor: Colors.red,
                      enableSuggestions: true,
                      obscureText: false,
                      keyboardType: TextInputType.text,
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
                        hintText: 'N1 2LL',
                        hintStyle: GoogleFonts.montserrat(
                          color: neutralColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: SvgPicture.asset(
                            'assets/icons/downward.svg',
                          ),
                        ),
                        suffixIconColor: Color(0xff9CA4AB),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 28,
                ),
                TextFieldProfile(
                  nameTextField: 'Country',
                  isObsecure: false,
                  controller: controller.countryC,
                  hintText: 'United Kingdom',
                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: 34,
                ),
                Divider(
                  color: Color(0xffC4C4C4),
                  thickness: 0.5,
                ),
                SizedBox(
                  height: 34,
                ),
                Text(
                  'Bank Account Details',
                  style: GoogleFonts.montserrat(
                    color: neutralColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                TextFieldProfile(
                  nameTextField: 'Bank Account Number',
                  isObsecure: false,
                  controller: controller.bankNumberC,
                  hintText: '204356XXXXXXX',
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 28,
                ),
                TextFieldProfile(
                  nameTextField: 'Account Holder’s Name',
                  isObsecure: false,
                  controller: controller.bankHolderNameC,
                  hintText: 'Abhiraj Sisodiya',
                  keyboardType: TextInputType.name,
                ),
                SizedBox(
                  height: 28,
                ),
                TextFieldProfile(
                  nameTextField: 'IFSC Code',
                  isObsecure: false,
                  controller: controller.ifsccodeC,
                  hintText: 'SBIN00428',
                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: 34,
                ),
                SizedBox(
                  height: 52,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      Get.toNamed(Routes.CHECKOUT_PAGE);
                    },
                    child: Text(
                      'Save',
                      style: GoogleFonts.plusJakartaSans(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 57,
                ),
              ],
            ),
          ),
        ));
  }
}
