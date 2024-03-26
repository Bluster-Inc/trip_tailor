import 'package:trip_tailor/presentation/attaraction_filter_screen/controller/attaraction_filter_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AttaractionFilterScreen.
///
/// This class ensures that the AttaractionFilterController is created when the
/// AttaractionFilterScreen is first loaded.
class AttaractionFilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttaractionFilterController());
  }
}
