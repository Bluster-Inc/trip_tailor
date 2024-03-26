import 'package:trip_tailor/presentation/flight_payment_apply_promo_screen/controller/flight_payment_apply_promo_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FlightPaymentApplyPromoScreen.
///
/// This class ensures that the FlightPaymentApplyPromoController is created when the
/// FlightPaymentApplyPromoScreen is first loaded.
class FlightPaymentApplyPromoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlightPaymentApplyPromoController());
  }
}
