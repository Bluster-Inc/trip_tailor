import 'package:trip_tailor/presentation/train_select_traveler_details_screen/controller/train_select_traveler_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrainSelectTravelerDetailsScreen.
///
/// This class ensures that the TrainSelectTravelerDetailsController is created when the
/// TrainSelectTravelerDetailsScreen is first loaded.
class TrainSelectTravelerDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrainSelectTravelerDetailsController());
  }
}
