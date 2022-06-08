import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_k/infrastructure/navigation/routes.dart';

import '../../../domain/bet/models/bet_item.model.dart';

class ItemOptionWidget extends StatelessWidget {
  final BetItemModel betItem;
  const ItemOptionWidget({required this.betItem});

  void navToChooseMode() {
    Get.toNamed(Routes.chooseMode, arguments: {'betItem': betItem});
  }

  List<Text> get buildNumbers {
    final textList = <Text>[];

    for (int i = betItem.headNumber; i < (betItem.headNumber + 4); i++) {
      final isTwoNumber = i > 9;

      textList.add(
        Text(
          '${!isTwoNumber ? '0' : ''}$i',
          style: const TextStyle(fontSize: 18),
        ),
      );
    }

    return textList;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 155,
      child: Card(
        child: InkWell(
          onTap: navToChooseMode,
          borderRadius: BorderRadius.circular(3),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(betItem.image, width: 100),
                  const SizedBox(width: 8),
                  Column(children: buildNumbers)
                ],
              ),
              const SizedBox(height: 5),
              Text(betItem.name, style: const TextStyle(fontSize: 22)),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
