import 'package:trip_tailor/presentation/train_select_seat_number_screen/controller/train_select_seat_number_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrainSelectSeatNumberScreen.
///
/// This class ensures that the TrainSelectSeatNumberController is created when the
/// TrainSelectSeatNumberScreen is first loaded.
class TrainSelectSeatNumberBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrainSelectSeatNumberController());
  }
}
