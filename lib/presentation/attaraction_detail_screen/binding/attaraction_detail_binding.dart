import 'package:trip_tailor/presentation/attaraction_detail_screen/controller/attaraction_detail_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AttaractionDetailScreen.
///
/// This class ensures that the AttaractionDetailController is created when the
/// AttaractionDetailScreen is first loaded.
class AttaractionDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttaractionDetailController());
  }
}
