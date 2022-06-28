import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_k/presentation/home/controllers/home.controller.dart';
import 'package:project_k/presentation/shared/base_screen.widget.dart';

import '../widgets/item_option.widget.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseScreenWidget(
        title: 'Escolha algum personagem para apostar:',
        children: [
          Obx(
            () => Wrap(
              children: controller.betItems
                  .map((e) => ItemOptionWidget(betItem: e))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
