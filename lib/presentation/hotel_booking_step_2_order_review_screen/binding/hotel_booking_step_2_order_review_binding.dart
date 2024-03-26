import 'package:trip_tailor/presentation/hotel_booking_step_2_order_review_screen/controller/hotel_booking_step_2_order_review_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelBookingStep2OrderReviewScreen.
///
/// This class ensures that the HotelBookingStep2OrderReviewController is created when the
/// HotelBookingStep2OrderReviewScreen is first loaded.
class HotelBookingStep2OrderReviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelBookingStep2OrderReviewController());
  }
}
