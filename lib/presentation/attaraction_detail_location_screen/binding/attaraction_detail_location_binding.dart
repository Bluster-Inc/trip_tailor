import 'package:trip_tailor/presentation/attaraction_detail_location_screen/controller/attaraction_detail_location_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AttaractionDetailLocationScreen.
///
/// This class ensures that the AttaractionDetailLocationController is created when the
/// AttaractionDetailLocationScreen is first loaded.
class AttaractionDetailLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttaractionDetailLocationController());
  }
}
