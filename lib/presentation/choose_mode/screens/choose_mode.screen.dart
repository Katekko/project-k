import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_k/presentation/choose_mode/choose_mode.dart';
import 'package:project_k/presentation/shared/base_screen.widget.dart';

import '../widgets/number_picker.widget.dart';
import '../widgets/haead_or_five.widget.dart';
import '../widgets/types_of_bet.widget.dart';

class ChooseModeScreen extends GetView<ChooseModeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BaseScreenWidget(
            title: 'Escolha seu tipo de aposta:',
            children: [
              TypesOfBetWidget(),
              const SizedBox(height: 20),
              NumberPickerWidget(),
              const Divider(thickness: 1.3),
              HeadOrFiveWidget(),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed:
                    controller.enableButton ? controller.navToConfirmBet : null,
                child: const Text('CONTINUAR'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
