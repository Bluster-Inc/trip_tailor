import 'package:trip_tailor/presentation/attaraction_all_screen/controller/attaraction_all_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AttaractionAllScreen.
///
/// This class ensures that the AttaractionAllController is created when the
/// AttaractionAllScreen is first loaded.
class AttaractionAllBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttaractionAllController());
  }
}
