import 'package:trip_tailor/presentation/train_booking_screen/controller/train_booking_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrainBookingScreen.
///
/// This class ensures that the TrainBookingController is created when the
/// TrainBookingScreen is first loaded.
class TrainBookingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrainBookingController());
  }
}
