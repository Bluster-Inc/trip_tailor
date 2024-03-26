import 'package:trip_tailor/presentation/attaraction_detail_description_tab_container_screen/controller/attaraction_detail_description_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AttaractionDetailDescriptionTabContainerScreen.
///
/// This class ensures that the AttaractionDetailDescriptionTabContainerController is created when the
/// AttaractionDetailDescriptionTabContainerScreen is first loaded.
class AttaractionDetailDescriptionTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttaractionDetailDescriptionTabContainerController());
  }
}
