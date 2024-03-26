import 'package:trip_tailor/presentation/flight_payment_completed_screen/controller/flight_payment_completed_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FlightPaymentCompletedScreen.
///
/// This class ensures that the FlightPaymentCompletedController is created when the
/// FlightPaymentCompletedScreen is first loaded.
class FlightPaymentCompletedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlightPaymentCompletedController());
  }
}
