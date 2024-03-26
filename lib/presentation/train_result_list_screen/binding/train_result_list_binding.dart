import 'package:trip_tailor/presentation/train_result_list_screen/controller/train_result_list_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrainResultListScreen.
///
/// This class ensures that the TrainResultListController is created when the
/// TrainResultListScreen is first loaded.
class TrainResultListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrainResultListController());
  }
}
