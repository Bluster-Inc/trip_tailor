import 'package:trip_tailor/presentation/train_form_screen/controller/train_form_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrainFormScreen.
///
/// This class ensures that the TrainFormController is created when the
/// TrainFormScreen is first loaded.
class TrainFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrainFormController());
  }
}
