import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_k/presentation/payment/controllers/payment.controller.dart';
import 'package:project_k/presentation/payment/widgets/login.widget.dart';

class PaymentScreen extends GetView<PaymentController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Visibility(
        visible: controller.isLogged.value,
        replacement: LoginWidget(),
        child: const Text('logado'),
      ),
    );
  }
}
