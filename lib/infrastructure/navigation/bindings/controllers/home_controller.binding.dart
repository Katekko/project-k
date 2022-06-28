import 'package:get/get.dart';
import 'package:project_k/infrastructure/navigation/bindings/repositories/bet_respostory.binding.dart';

import '../../../../presentation/home/controllers/home.controller.dart';

class HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    final betRepository = BetRepositoryBinding();
    Get.lazyPut<HomeController>(
      () => HomeController(betRepository: betRepository.repository),
    );
  }
}
