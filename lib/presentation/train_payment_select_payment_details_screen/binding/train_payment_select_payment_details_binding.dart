import 'package:trip_tailor/presentation/train_payment_select_payment_details_screen/controller/train_payment_select_payment_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrainPaymentSelectPaymentDetailsScreen.
///
/// This class ensures that the TrainPaymentSelectPaymentDetailsController is created when the
/// TrainPaymentSelectPaymentDetailsScreen is first loaded.
class TrainPaymentSelectPaymentDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrainPaymentSelectPaymentDetailsController());
  }
}
