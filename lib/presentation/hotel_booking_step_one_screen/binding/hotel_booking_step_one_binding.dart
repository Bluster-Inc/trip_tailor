import 'package:trip_tailor/presentation/hotel_booking_step_one_screen/controller/hotel_booking_step_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelBookingStepOneScreen.
///
/// This class ensures that the HotelBookingStepOneController is created when the
/// HotelBookingStepOneScreen is first loaded.
class HotelBookingStepOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelBookingStepOneController());
  }
}
