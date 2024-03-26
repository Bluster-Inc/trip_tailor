import 'package:trip_tailor/presentation/attaraction_select_location_screen/controller/attaraction_select_location_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AttaractionSelectLocationScreen.
///
/// This class ensures that the AttaractionSelectLocationController is created when the
/// AttaractionSelectLocationScreen is first loaded.
class AttaractionSelectLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttaractionSelectLocationController());
  }
}
