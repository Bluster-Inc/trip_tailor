import 'package:trip_tailor/presentation/hotel_booking_step_3_select_payment_method_screen/controller/hotel_booking_step_3_select_payment_method_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelBookingStep3SelectPaymentMethodScreen.
///
/// This class ensures that the HotelBookingStep3SelectPaymentMethodController is created when the
/// HotelBookingStep3SelectPaymentMethodScreen is first loaded.
class HotelBookingStep3SelectPaymentMethodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelBookingStep3SelectPaymentMethodController());
  }
}
