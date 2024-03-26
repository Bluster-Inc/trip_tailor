import 'package:trip_tailor/presentation/home_vtwo_screen/controller/home_vtwo_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeVtwoScreen.
///
/// This class ensures that the HomeVtwoController is created when the
/// HomeVtwoScreen is first loaded.
class HomeVtwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeVtwoController());
  }
}
