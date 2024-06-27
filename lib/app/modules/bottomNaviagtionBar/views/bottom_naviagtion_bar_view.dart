import 'package:ecommerce/app/modules/home/views/home_view.dart';
import 'package:ecommerce/app/modules/shop_page/views/shop_page_view.dart';
import 'package:ecommerce/app/modules/whistlist_page/controllers/whistlist_page_controller.dart';
import 'package:ecommerce/app/modules/whistlist_page/views/whistlist_page_view.dart';
import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:ecommerce/app/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../home/controllers/home_controller.dart';
import '../../shop_page/controllers/shop_page_controller.dart';
import '../controllers/bottom_naviagtion_bar_controller.dart';

class BottomNaviagtionBarView extends GetView<BottomNaviagtionBarController> {
  const BottomNaviagtionBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    Get.put(WhistlistPageController());
    Get.put(ShopPageController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Obx(
          () => IndexedStack(
            index: controller.tabIndex.value,
            children: [
              HomeView(),
              WhistlistPageView(),
              ShopPageView(),
              Container(),
              Container(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey[400],
          selectedItemColor: primaryColor,
          selectedIconTheme: IconThemeData(
            color: primaryColor,
          ),
          type: BottomNavigationBarType.fixed,
          onTap: controller.changeTab,
          currentIndex: controller.tabIndex.value,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/whistlist.svg'),
              label: 'Whistlist',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/search_bottomNav.svg'),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/search_bottomNav.svg'),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/setting.svg'),
              label: 'Setting',
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 60,
        height: 60,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor:
                  controller.isClicked.value ? primaryColor : Colors.white,
              padding: EdgeInsets.all(15)),
          onPressed: () {
            controller.toggleButton();
            controller.onTabTapped(2);
          },
          child: SvgPicture.asset(
            'assets/icons/shop.svg',
            color: controller.isClicked.value ? Colors.white : neutralColor,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
