import 'package:trip_tailor/presentation/flight_booking_screen/controller/flight_booking_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FlightBookingScreen.
///
/// This class ensures that the FlightBookingController is created when the
/// FlightBookingScreen is first loaded.
class FlightBookingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlightBookingController());
  }
}
