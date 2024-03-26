import 'package:trip_tailor/presentation/attaraction_payment_success_screen/controller/attaraction_payment_success_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AttaractionPaymentSuccessScreen.
///
/// This class ensures that the AttaractionPaymentSuccessController is created when the
/// AttaractionPaymentSuccessScreen is first loaded.
class AttaractionPaymentSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttaractionPaymentSuccessController());
  }
}
