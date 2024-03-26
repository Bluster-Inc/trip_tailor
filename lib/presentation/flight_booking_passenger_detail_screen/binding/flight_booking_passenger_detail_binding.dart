import 'package:trip_tailor/presentation/flight_booking_passenger_detail_screen/controller/flight_booking_passenger_detail_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FlightBookingPassengerDetailScreen.
///
/// This class ensures that the FlightBookingPassengerDetailController is created when the
/// FlightBookingPassengerDetailScreen is first loaded.
class FlightBookingPassengerDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlightBookingPassengerDetailController());
  }
}
