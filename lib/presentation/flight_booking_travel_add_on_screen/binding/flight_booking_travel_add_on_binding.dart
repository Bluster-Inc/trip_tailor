import 'package:trip_tailor/presentation/flight_booking_travel_add_on_screen/controller/flight_booking_travel_add_on_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FlightBookingTravelAddOnScreen.
///
/// This class ensures that the FlightBookingTravelAddOnController is created when the
/// FlightBookingTravelAddOnScreen is first loaded.
class FlightBookingTravelAddOnBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlightBookingTravelAddOnController());
  }
}
