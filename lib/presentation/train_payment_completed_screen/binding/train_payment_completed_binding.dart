import 'package:trip_tailor/presentation/train_payment_completed_screen/controller/train_payment_completed_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrainPaymentCompletedScreen.
///
/// This class ensures that the TrainPaymentCompletedController is created when the
/// TrainPaymentCompletedScreen is first loaded.
class TrainPaymentCompletedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrainPaymentCompletedController());
  }
}
