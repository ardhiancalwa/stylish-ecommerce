import 'package:get/get.dart';

class ShippingPageController extends GetxController {
  var selectedImage = ''.obs;

  void selectImage(String image) {
    selectedImage.value = image;
  }
}
