import 'package:trip_tailor/presentation/train_payment_pay_process_screen/controller/train_payment_pay_process_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrainPaymentPayProcessScreen.
///
/// This class ensures that the TrainPaymentPayProcessController is created when the
/// TrainPaymentPayProcessScreen is first loaded.
class TrainPaymentPayProcessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrainPaymentPayProcessController());
  }
}
