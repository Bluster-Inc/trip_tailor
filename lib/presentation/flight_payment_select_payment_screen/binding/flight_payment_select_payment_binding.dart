import 'package:trip_tailor/presentation/flight_payment_select_payment_screen/controller/flight_payment_select_payment_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FlightPaymentSelectPaymentScreen.
///
/// This class ensures that the FlightPaymentSelectPaymentController is created when the
/// FlightPaymentSelectPaymentScreen is first loaded.
class FlightPaymentSelectPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlightPaymentSelectPaymentController());
  }
}
