import 'package:trip_tailor/presentation/hotel_booking_step_3_add_coupon_screen/controller/hotel_booking_step_3_add_coupon_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelBookingStep3AddCouponScreen.
///
/// This class ensures that the HotelBookingStep3AddCouponController is created when the
/// HotelBookingStep3AddCouponScreen is first loaded.
class HotelBookingStep3AddCouponBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelBookingStep3AddCouponController());
  }
}
