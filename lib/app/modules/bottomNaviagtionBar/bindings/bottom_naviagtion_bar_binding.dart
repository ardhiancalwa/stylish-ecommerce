import 'package:get/get.dart';

import '../controllers/bottom_naviagtion_bar_controller.dart';

class BottomNaviagtionBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNaviagtionBarController>(
      () => BottomNaviagtionBarController(),
    );
  }
}
