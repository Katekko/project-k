import 'package:get/get.dart';
import 'package:project_k/domain/bet/models/bet_item.model.dart';

import '../../../domain/bet/bet.repository.dart';

class ConfirmBetController {
  late final BetRepository betRepository;
  late final BetItemModel bet;

  ConfirmBetController({required this.betRepository}) {
    bet = Get.arguments['betItem'];
  }

  void confirmBet() async {
    try {
      await betRepository.confirmBet(bet);
    } catch (err) {
      rethrow;
    }
  }
}
