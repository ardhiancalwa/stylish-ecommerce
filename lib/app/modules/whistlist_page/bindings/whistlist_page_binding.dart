import 'package:get/get.dart';

import '../controllers/whistlist_page_controller.dart';

class WhistlistPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WhistlistPageController>(
      () => WhistlistPageController(),
    );
  }
}
