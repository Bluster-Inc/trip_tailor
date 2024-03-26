import 'package:trip_tailor/presentation/flight_booking_extra_protection_screen/controller/flight_booking_extra_protection_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FlightBookingExtraProtectionScreen.
///
/// This class ensures that the FlightBookingExtraProtectionController is created when the
/// FlightBookingExtraProtectionScreen is first loaded.
class FlightBookingExtraProtectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlightBookingExtraProtectionController());
  }
}
