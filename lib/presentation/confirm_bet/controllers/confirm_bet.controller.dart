import 'package:get/get.dart';
import 'package:project_k/domain/bet/models/bet_item.model.dart';
import 'package:project_k/infrastructure/navigation/routes.dart';

class ConfirmBetController {
  late final BetItemModel bet;

  ConfirmBetController() {
    bet = Get.arguments['betItem'];
  }

  void confirmBet() async {
    try {
      Get.toNamed(Routes.payment, arguments: {'bet': bet});
    } catch (err) {
      rethrow;
    }
  }
}
