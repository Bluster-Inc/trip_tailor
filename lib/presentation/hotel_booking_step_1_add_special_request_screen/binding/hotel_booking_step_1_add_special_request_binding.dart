import 'package:trip_tailor/presentation/hotel_booking_step_1_add_special_request_screen/controller/hotel_booking_step_1_add_special_request_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelBookingStep1AddSpecialRequestScreen.
///
/// This class ensures that the HotelBookingStep1AddSpecialRequestController is created when the
/// HotelBookingStep1AddSpecialRequestScreen is first loaded.
class HotelBookingStep1AddSpecialRequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelBookingStep1AddSpecialRequestController());
  }
}
