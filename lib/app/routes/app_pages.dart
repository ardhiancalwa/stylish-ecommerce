import 'package:get/get.dart';

import '../modules/bottomNaviagtionBar/bindings/bottom_naviagtion_bar_binding.dart';
import '../modules/bottomNaviagtionBar/views/bottom_naviagtion_bar_view.dart';
import '../modules/checkout_page/bindings/checkout_page_binding.dart';
import '../modules/checkout_page/views/checkout_page_view.dart';
import '../modules/forgotPassword_page/bindings/forgot_password_page_binding.dart';
import '../modules/forgotPassword_page/views/forgot_password_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/onboarding_screen/bindings/onboarding_screen_binding.dart';
import '../modules/onboarding_screen/views/onboarding_screen_view.dart';
import '../modules/profile_page/bindings/profile_page_binding.dart';
import '../modules/profile_page/views/profile_page_view.dart';
import '../modules/shop_page/bindings/shop_page_binding.dart';
import '../modules/shop_page/views/shop_page_view.dart';
import '../modules/signin_page/bindings/signin_page_binding.dart';
import '../modules/signin_page/views/signin_page_view.dart';
import '../modules/signup_page/bindings/signup_page_binding.dart';
import '../modules/signup_page/views/signup_page_view.dart';
import '../modules/splashscreen_page/bindings/splashscreen_page_binding.dart';
import '../modules/splashscreen_page/views/splashscreen_page_view.dart';
import '../modules/whistlist_page/bindings/whistlist_page_binding.dart';
import '../modules/whistlist_page/views/whistlist_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASHSCREEN_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASHSCREEN_PAGE,
      page: () => const SplashscreenPageView(),
      binding: SplashscreenPageBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_SCREEN,
      page: () => OnboardingScreenView(),
      binding: OnboardingScreenBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN_PAGE,
      page: () => SigninPageView(),
      binding: SigninPageBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP_PAGE,
      page: () => const SignupPageView(),
      binding: SignupPageBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD_PAGE,
      page: () => const ForgotPasswordPageView(),
      binding: ForgotPasswordPageBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAVIAGTION_BAR,
      page: () => const BottomNaviagtionBarView(),
      binding: BottomNaviagtionBarBinding(),
    ),
    GetPage(
      name: _Paths.WHISTLIST_PAGE,
      page: () => const WhistlistPageView(),
      binding: WhistlistPageBinding(),
    ),
    GetPage(
      name: _Paths.SHOP_PAGE,
      page: () => const ShopPageView(),
      binding: ShopPageBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_PAGE,
      page: () => const ProfilePageView(),
      binding: ProfilePageBinding(),
    ),
    GetPage(
      name: _Paths.CHECKOUT_PAGE,
      page: () => const CheckoutPageView(),
      binding: CheckoutPageBinding(),
    ),
  ];
}
