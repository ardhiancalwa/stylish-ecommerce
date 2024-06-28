import 'package:get/get.dart';

import '../controllers/shipping_page_controller.dart';

class ShippingPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShippingPageController>(
      () => ShippingPageController(),
    );
  }
}
