import 'package:get/get.dart';

class BottomNaviagtionBarController extends GetxController {
  var tabIndex = 0.obs;
  var isClicked = false.obs;

  void toggleButton() {
    isClicked.value = !isClicked.value;
  }
  void changeTab(int idx) {
    tabIndex.value = idx;
  }
  void onTabTapped(int index) {
    changeTab(index);
  }
}
