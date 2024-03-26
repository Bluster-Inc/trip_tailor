import 'package:trip_tailor/presentation/hotel_booking_step_1_contact_detail_screen/controller/hotel_booking_step_1_contact_detail_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelBookingStep1ContactDetailScreen.
///
/// This class ensures that the HotelBookingStep1ContactDetailController is created when the
/// HotelBookingStep1ContactDetailScreen is first loaded.
class HotelBookingStep1ContactDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelBookingStep1ContactDetailController());
  }
}
