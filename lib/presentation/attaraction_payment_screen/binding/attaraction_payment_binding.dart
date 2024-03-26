import 'package:trip_tailor/presentation/attaraction_payment_screen/controller/attaraction_payment_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AttaractionPaymentScreen.
///
/// This class ensures that the AttaractionPaymentController is created when the
/// AttaractionPaymentScreen is first loaded.
class AttaractionPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttaractionPaymentController());
  }
}
