import 'package:trip_tailor/presentation/about_traveline_screen/controller/about_traveline_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AboutTravelineScreen.
///
/// This class ensures that the AboutTravelineController is created when the
/// AboutTravelineScreen is first loaded.
class AboutTravelineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AboutTravelineController());
  }
}
