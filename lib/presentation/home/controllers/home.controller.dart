import 'package:get/get.dart';
import 'package:project_k/domain/bet/bet.repository.dart';

import '../../../domain/bet/models/bet_item.model.dart';

class HomeController extends GetxController {
  late final BetRepository betRepository;
  final betItems = <BetItemModel>[].obs;

  HomeController({required this.betRepository});

  @override
  void onReady() {
    super.onReady();
    loadBetItems();
  }

  void loadBetItems() async {
    try {
      final response = await betRepository.loadBetItems();
      betItems.assignAll(response);
    } catch (err) {
      rethrow;
    }
  }
}
