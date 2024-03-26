import 'package:trip_tailor/presentation/train_payment_select_payment_screen/controller/train_payment_select_payment_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrainPaymentSelectPaymentScreen.
///
/// This class ensures that the TrainPaymentSelectPaymentController is created when the
/// TrainPaymentSelectPaymentScreen is first loaded.
class TrainPaymentSelectPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrainPaymentSelectPaymentController());
  }
}
