import 'package:trip_tailor/presentation/hotel_booking_step_2_policies_details_screen/controller/hotel_booking_step_2_policies_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelBookingStep2PoliciesDetailsScreen.
///
/// This class ensures that the HotelBookingStep2PoliciesDetailsController is created when the
/// HotelBookingStep2PoliciesDetailsScreen is first loaded.
class HotelBookingStep2PoliciesDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelBookingStep2PoliciesDetailsController());
  }
}
