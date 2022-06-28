import 'package:get/get.dart';

import '../../../../presentation/confirm_bet/controllers/confirm_bet.controller.dart';

class ConfirmBetControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmBetController>(() => ConfirmBetController());
  }
}
