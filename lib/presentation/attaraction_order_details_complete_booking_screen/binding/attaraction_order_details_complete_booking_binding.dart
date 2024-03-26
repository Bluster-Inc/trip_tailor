import 'package:trip_tailor/presentation/attaraction_order_details_complete_booking_screen/controller/attaraction_order_details_complete_booking_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AttaractionOrderDetailsCompleteBookingScreen.
///
/// This class ensures that the AttaractionOrderDetailsCompleteBookingController is created when the
/// AttaractionOrderDetailsCompleteBookingScreen is first loaded.
class AttaractionOrderDetailsCompleteBookingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttaractionOrderDetailsCompleteBookingController());
  }
}
