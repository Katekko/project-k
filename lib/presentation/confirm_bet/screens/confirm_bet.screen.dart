import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_k/presentation/confirm_bet/confirm_bet.dart';

class ConfirmBetScreen extends GetView<ConfirmBetController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Confirmação de aposta',
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(height: 10),
                  if (controller.bet.betType!.id == 0)
                    TextLineWidget(
                      text: 'Você está apostando em:',
                      value: controller.bet.name,
                    )
                  else
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextLineWidget(
                          text: 'Tipo da aposta é:',
                          value: controller.bet.typeDesc,
                        ),
                        const SizedBox(height: 5),
                        TextLineWidget(
                          text: 'Você está apostando no numero:',
                          value: '${controller.bet.betType!.number}',
                        ),
                      ],
                    ),
                  const SizedBox(height: 5),
                  TextLineWidget(
                    text: 'É na cabeça?',
                    value: controller.bet.betType!.isHead ? 'SIM' : 'NÃO',
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: controller.confirmBet,
                    child: const Text('CONFIRMAR'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TextLineWidget extends StatelessWidget {
  final String text;
  final String value;
  const TextLineWidget({required this.text, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: const TextStyle(fontSize: 16)),
        Text(value, style: const TextStyle(fontSize: 20)),
      ],
    );
  }
}
