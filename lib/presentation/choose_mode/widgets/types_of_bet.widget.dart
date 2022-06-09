import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/choose_mode.controller.dart';

class TypesOfBetWidget extends GetView<ChooseModeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          RadioListTile(
            value: 0,
            groupValue: controller.betType.value,
            onChanged: controller.betType,
            title: Text(
              'Manter ${controller.betItem.name} ${controller.betItem.allNumbers}',
            ),
          ),
          RadioListTile(
            value: 1,
            groupValue: controller.betType.value,
            onChanged: controller.betType,
            title: const Text('Trocar para dezena'),
          ),
          RadioListTile(
            value: 2,
            groupValue: controller.betType.value,
            onChanged: controller.betType,
            title: const Text('Trocar para centena'),
          ),
          RadioListTile(
            value: 3,
            groupValue: controller.betType.value,
            onChanged: controller.betType,
            title: const Text('Trocar para milhar'),
          ),
        ],
      ),
    );
  }
}
