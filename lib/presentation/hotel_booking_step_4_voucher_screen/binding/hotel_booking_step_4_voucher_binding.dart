import 'package:trip_tailor/presentation/hotel_booking_step_4_voucher_screen/controller/hotel_booking_step_4_voucher_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelBookingStep4VoucherScreen.
///
/// This class ensures that the HotelBookingStep4VoucherController is created when the
/// HotelBookingStep4VoucherScreen is first loaded.
class HotelBookingStep4VoucherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelBookingStep4VoucherController());
  }
}
