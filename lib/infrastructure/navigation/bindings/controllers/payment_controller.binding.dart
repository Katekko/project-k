import 'package:get/get.dart';
import 'package:project_k/presentation/payment/controllers/payment.controller.dart';

class PaymentControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentController>(() => PaymentController());
  }
}
