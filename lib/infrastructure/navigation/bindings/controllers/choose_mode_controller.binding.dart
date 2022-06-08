import 'package:get/get.dart';

import '../../../../presentation/choose_mode/controllers/choose_mode.controller.dart';

class ChooseModeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChooseModeController>(() => ChooseModeController());
  }
}
