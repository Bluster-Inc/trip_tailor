import 'package:trip_tailor/presentation/train_result_list_detail_journey_tab_container_screen/controller/train_result_list_detail_journey_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrainResultListDetailJourneyTabContainerScreen.
///
/// This class ensures that the TrainResultListDetailJourneyTabContainerController is created when the
/// TrainResultListDetailJourneyTabContainerScreen is first loaded.
class TrainResultListDetailJourneyTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrainResultListDetailJourneyTabContainerController());
  }
}
