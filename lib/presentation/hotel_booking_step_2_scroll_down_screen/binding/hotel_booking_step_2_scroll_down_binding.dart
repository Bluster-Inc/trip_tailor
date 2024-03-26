import 'package:trip_tailor/presentation/hotel_booking_step_2_scroll_down_screen/controller/hotel_booking_step_2_scroll_down_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelBookingStep2ScrollDownScreen.
///
/// This class ensures that the HotelBookingStep2ScrollDownController is created when the
/// HotelBookingStep2ScrollDownScreen is first loaded.
class HotelBookingStep2ScrollDownBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelBookingStep2ScrollDownController());
  }
}
