import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopPageController extends GetxController {
  PageController pageController = PageController();
  var data = [
    {
      "name": "Black Winter...",
      "description": "Autumn And Winter Casual cotton-padded jacket...",
      "price": "₹499",
      "sum_rate": "6,6890",
      "image": "winter.png"
    },
    {
      "name": "Mens Starry",
      "description": "Mens Starry Sky Printed Shirt 100% Cotton Fabric",
      "price": "₹399",
      "sum_rate": "1,52,344",
      "image": "starry.png"
    },
    {
      "name": "Black Dress",
      "description": "Solid Black Dress for Women, Sexy Chain Shorts Ladi...",
      "price": "₹2,000",
      "sum_rate": "5,23,456",
      "image": "dress.png"
    },
    {
      "name": "Pink Embroide...",
      "description": "EARTHEN Rose Pink Embroidered Tiered Max...",
      "price": "₹1,900",
      "sum_rate": "45,678",
      "image": "embroide.png"
    },
    {
      "name": "Flare Dress",
      "description":
          "Antheaa Black & Rust Orange Floral Print Tiered Midi F...",
      "price": "₹1,990",
      "sum_rate": "3,35,566",
      "image": "flare.png"
    },
    {
      "name": "Black Winter...",
      "description": "Autumn And Winter Casual cotton-padded jacket...",
      "price": "₹499",
      "sum_rate": "6,6890",
      "image": "winter.png"
    },
  ].obs;
}
