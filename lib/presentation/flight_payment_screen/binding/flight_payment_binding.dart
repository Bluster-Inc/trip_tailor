import 'package:trip_tailor/presentation/flight_payment_screen/controller/flight_payment_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FlightPaymentScreen.
///
/// This class ensures that the FlightPaymentController is created when the
/// FlightPaymentScreen is first loaded.
class FlightPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlightPaymentController());
  }
}
