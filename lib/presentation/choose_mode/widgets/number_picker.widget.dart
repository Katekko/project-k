import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numberpicker/numberpicker.dart';

import '../controllers/choose_mode.controller.dart';

class NumberPickerWidget extends GetView<ChooseModeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Visibility(
        visible: controller.betType.value >= 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: Get.width,
              child: const Text(
                'Escolha seu numero:',
                style: TextStyle(fontSize: 24),
              ),
            ),
            _NumberPickerWidget(
              minValue: controller.getMinValue,
              maxValue: controller.getMaxValue,
            ),
          ],
        ),
      ),
    );
  }
}

class _NumberPickerWidget extends GetView<ChooseModeController> {
  final int minValue, maxValue;
  const _NumberPickerWidget({required this.minValue, required this.maxValue});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: Obx(
        () => NumberPicker(
          value: controller.number.value,
          minValue: minValue,
          maxValue: maxValue + 1,
          onChanged: controller.onChangeNumber,
          axis: Axis.horizontal,
          itemWidth: 100,
          haptics: true,
          textStyle: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
