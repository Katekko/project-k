import 'package:get/get.dart';
import 'package:project_k/domain/bet/models/bet_item.model.dart';

class ChooseModeController extends GetxController {
  late final BetItemModel betItem;
  final betType = 0.obs;
  final headOrFive = 0.obs;
  final number = 0.obs;

  @override
  void onInit() {
    super.onInit();
    betItem = Get.arguments['betItem'] as BetItemModel;

    ever(betType, (_) => setInitialValue());
  }

  void setInitialValue() => number.value = getMinValue;

  int get getMinValue {
    switch (betType.value) {
      case 1:
        return 0;
      case 2:
        return 100;
      case 3:
        return 1000;
      default:
        return 0;
    }
  }

  int get getMaxValue {
    switch (betType.value) {
      case 1:
        return 99;
      case 2:
        return 999;
      case 3:
        return 9999;
      default:
        return 0;
    }
  }

  void onChangeNumber(int number) {
    switch (betType.value) {
      case 1:
        if (number >= 0 && number <= 99) {
          this.number.value = number;
        } else {
          this.number.value = 0;
        }
        break;
      case 2:
        if (number >= 100 && number <= 999) {
          this.number.value = number;
        } else {
          this.number.value = 100;
        }
        break;
      case 3:
        if (number >= 1000 && number <= 9999) {
          this.number.value = number;
        } else {
          this.number.value = 1000;
        }
        break;
      default:
    }
  }

  void navToConfirmBet() {}

  bool get enableButton => true.obs.value;
}
