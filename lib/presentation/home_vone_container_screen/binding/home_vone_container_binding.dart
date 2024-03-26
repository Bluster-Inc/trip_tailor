import 'package:trip_tailor/presentation/home_vone_container_screen/controller/home_vone_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeVoneContainerScreen.
///
/// This class ensures that the HomeVoneContainerController is created when the
/// HomeVoneContainerScreen is first loaded.
class HomeVoneContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeVoneContainerController());
  }
}
