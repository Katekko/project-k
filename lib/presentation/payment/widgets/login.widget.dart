import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_k/presentation/payment/controllers/payment.controller.dart';

class LoginWidget extends GetView<PaymentController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Para continuar com o pagamento, faça login primeiro!',
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: controller.openLogin,
              child: const Text('Login', style: TextStyle(fontSize: 20)),
            ),
            const SizedBox(height: 5),
            TextButton(
              onPressed: controller.openSignUp,
              child: const Text(
                'Ainda não tenho cadastro!',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
