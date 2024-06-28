import 'package:get/get.dart';

import '../controllers/place_order_page_controller.dart';

class PlaceOrderPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlaceOrderPageController>(
      () => PlaceOrderPageController(),
    );
  }
}
