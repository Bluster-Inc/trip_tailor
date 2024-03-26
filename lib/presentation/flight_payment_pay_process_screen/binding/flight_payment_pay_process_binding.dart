import 'package:trip_tailor/presentation/flight_payment_pay_process_screen/controller/flight_payment_pay_process_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FlightPaymentPayProcessScreen.
///
/// This class ensures that the FlightPaymentPayProcessController is created when the
/// FlightPaymentPayProcessScreen is first loaded.
class FlightPaymentPayProcessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlightPaymentPayProcessController());
  }
}
