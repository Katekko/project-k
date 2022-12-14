import 'package:get/get.dart';
import 'package:project_k/presentation/payment/screens/payment.screen.dart';
import 'package:project_k/presentation/presentation.dart';

import 'bindings/bindinds.dart';
import 'bindings/controllers/payment_controller.binding.dart';
import 'routes.dart';

class Navigation {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.home,
      page: () => HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.chooseMode,
      page: () => ChooseModeScreen(),
      binding: ChooseModeControllerBinding(),
    ),
    GetPage(
      name: Routes.confirmBet,
      page: () => ConfirmBetScreen(),
      binding: ConfirmBetControllerBinding(),
    ),
    GetPage(
      name: Routes.payment,
      page: () => PaymentScreen(),
      binding: PaymentControllerBinding(),
    ),
  ];
}
