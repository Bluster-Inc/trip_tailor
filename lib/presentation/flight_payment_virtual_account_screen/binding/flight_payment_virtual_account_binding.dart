import 'package:trip_tailor/presentation/flight_payment_virtual_account_screen/controller/flight_payment_virtual_account_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FlightPaymentVirtualAccountScreen.
///
/// This class ensures that the FlightPaymentVirtualAccountController is created when the
/// FlightPaymentVirtualAccountScreen is first loaded.
class FlightPaymentVirtualAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlightPaymentVirtualAccountController());
  }
}
