import 'package:trip_tailor/presentation/train_select_travel_extra_protection_screen/controller/train_select_travel_extra_protection_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrainSelectTravelExtraProtectionScreen.
///
/// This class ensures that the TrainSelectTravelExtraProtectionController is created when the
/// TrainSelectTravelExtraProtectionScreen is first loaded.
class TrainSelectTravelExtraProtectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrainSelectTravelExtraProtectionController());
  }
}
