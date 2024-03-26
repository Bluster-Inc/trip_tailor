import 'package:trip_tailor/presentation/hotel_booking_step_3_payment_screen/controller/hotel_booking_step_3_payment_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelBookingStep3PaymentScreen.
///
/// This class ensures that the HotelBookingStep3PaymentController is created when the
/// HotelBookingStep3PaymentScreen is first loaded.
class HotelBookingStep3PaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelBookingStep3PaymentController());
  }
}
