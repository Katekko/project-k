import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/choose_mode.controller.dart';

class HeadOrFiveWidget extends GetView<ChooseModeController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => RadioListTile(
            value: 0,
            groupValue: controller.headOrFive.value,
            onChanged: controller.headOrFive,
            title: const Text('Na cabeça'),
          ),
        ),
        Obx(
          () => RadioListTile(
            value: 1,
            groupValue: controller.headOrFive.value,
            onChanged: controller.headOrFive,
            title: const Text('Do 1º ao 5º'),
          ),
        ),
      ],
    );
  }
}
