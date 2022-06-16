import 'package:almobtaker/modules/cart/bindings/cart_binding.dart';
import 'package:almobtaker/modules/cart/views/cart_view.dart';
import 'package:almobtaker/modules/favourate/bindings/favourate_binding.dart';
import 'package:almobtaker/modules/favourate/views/favourate_view.dart';
import 'package:almobtaker/modules/finish%20design/bindings/finish_design_binding.dart';
import 'package:almobtaker/modules/finish%20design/views/finish_design_view.dart';
import 'package:almobtaker/modules/forgetPassword/controllers/forget_password_controller.dart';
import 'package:almobtaker/modules/forgetPassword/views/forget_password_view.dart';
import 'package:almobtaker/modules/login/bindings/login_binding.dart';
import 'package:almobtaker/modules/login/views/login_view.dart';
import 'package:almobtaker/modules/mainScreen/bindings/main_screen_binding.dart';
import 'package:almobtaker/modules/mainScreen/views/main_screen_view.dart';
import 'package:almobtaker/modules/notifications/bindings/notifications_binding.dart';
import 'package:almobtaker/modules/notifications/views/notifications_view.dart';
import 'package:almobtaker/modules/offers/views/offers_view.dart';
import 'package:almobtaker/modules/on%20boadrding/binding/on_boarding_binding.dart';
import 'package:almobtaker/modules/on%20boadrding/view/on_boarding_view.dart';
import 'package:almobtaker/modules/otp/bindings/otp_binding.dart';
import 'package:almobtaker/modules/otp/views/otp_view.dart';
import 'package:almobtaker/modules/printing%20techniques/bindings/printing_techniqes_binding.dart';
import 'package:almobtaker/modules/printing%20techniques/views/printing_techniques_view.dart';
import 'package:almobtaker/modules/regeister/binding/register_binding.dart';
import 'package:almobtaker/modules/regeister/view/register_view.dart';
import 'package:almobtaker/modules/search/bindings/search_binding.dart';
import 'package:almobtaker/modules/search/views/search_view.dart';
import 'package:get/get.dart';

import '../modules/forgetPassword/bindings/forget_password_binding.dart';
import '../modules/notifications/views/notifications_details_view.dart';
import '../modules/offers/bindings/offers_binding.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING;

  static final routes = [
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnBoardingView(),
      binding: OnBoardingBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),

    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),

    GetPage(
      name: _Paths.FORGET_PASSWORD,
      page: () => ForgetPasswordView(),
      binding: ForgetPasswordBinding(),
    ),

    GetPage(
      name: _Paths.OTP,
      page: () => OTPView(),
      binding: OTPBinding(),
    ),

    GetPage(
      name: _Paths.MAIN_SCREEN,
      page: () => MainScreenView(),
      binding: MainScreenBinding(),
    ),

    GetPage(
      name: _Paths.FAVOURATE,
      page: () => FavourateView(),
      binding: FavourateBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATIONS,
      page: () => NotificationsView(),
      binding: NotificationsBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATIONS_DETAILS,
      page: () => NotificationsDetailsView(),
      binding: NotificationsBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.FINISH_DESIGN,
      page: () => FinishDesignView(),
      binding: FinishDesignBinding(),
    ),

    GetPage(
      name: _Paths.OFFERS,
      page: () => OffersView(),
      binding: OffersBinding(),
    ),
    GetPage(
      name: _Paths.PRINTINGTECHNIQUES,
      page: () => PrintingTechniquesView(),
      binding: PrintingTechniquesBinding(),
    ),
  ];
}
