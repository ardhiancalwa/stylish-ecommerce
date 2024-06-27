import 'package:get/get.dart';

import '../controllers/splashscreen_page_controller.dart';

class SplashscreenPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashscreenPageController>(
      () => SplashscreenPageController(),
    );
  }
}
