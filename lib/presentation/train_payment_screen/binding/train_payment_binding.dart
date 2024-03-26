import 'package:trip_tailor/presentation/train_payment_screen/controller/train_payment_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrainPaymentScreen.
///
/// This class ensures that the TrainPaymentController is created when the
/// TrainPaymentScreen is first loaded.
class TrainPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrainPaymentController());
  }
}
