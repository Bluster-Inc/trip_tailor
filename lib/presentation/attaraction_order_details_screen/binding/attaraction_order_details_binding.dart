import 'package:trip_tailor/presentation/attaraction_order_details_screen/controller/attaraction_order_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AttaractionOrderDetailsScreen.
///
/// This class ensures that the AttaractionOrderDetailsController is created when the
/// AttaractionOrderDetailsScreen is first loaded.
class AttaractionOrderDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttaractionOrderDetailsController());
  }
}
