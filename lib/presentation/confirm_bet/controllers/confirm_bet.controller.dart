import 'package:get/get.dart';
import 'package:project_k/domain/bet/models/bet_item.model.dart';

class ConfirmBetController {
  late final BetItemModel bet;
  ConfirmBetController() {
    bet = Get.arguments['betItem'];
  }

  void confirmBet() {}
}
