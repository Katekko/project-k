import 'package:get/get.dart';

import '../../../../presentation/confirm_bet/controllers/confirm_bet.controller.dart';
import '../repositories/bet_respostory.binding.dart';

class ConfirmBetControllerBinding extends Bindings {
  @override
  void dependencies() {
    final betBinding = BetRepositoryBinding();
    Get.lazyPut<ConfirmBetController>(
      () => ConfirmBetController(betRepository: betBinding.repository),
    );
  }
}
