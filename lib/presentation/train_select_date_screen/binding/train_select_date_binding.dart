import 'package:trip_tailor/presentation/train_select_date_screen/controller/train_select_date_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrainSelectDateScreen.
///
/// This class ensures that the TrainSelectDateController is created when the
/// TrainSelectDateScreen is first loaded.
class TrainSelectDateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrainSelectDateController());
  }
}
