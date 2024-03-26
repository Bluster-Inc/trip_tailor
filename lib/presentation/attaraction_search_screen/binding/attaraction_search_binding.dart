import 'package:trip_tailor/presentation/attaraction_search_screen/controller/attaraction_search_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AttaractionSearchScreen.
///
/// This class ensures that the AttaractionSearchController is created when the
/// AttaractionSearchScreen is first loaded.
class AttaractionSearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttaractionSearchController());
  }
}
