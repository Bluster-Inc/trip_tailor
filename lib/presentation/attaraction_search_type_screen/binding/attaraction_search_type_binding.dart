import 'package:trip_tailor/presentation/attaraction_search_type_screen/controller/attaraction_search_type_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AttaractionSearchTypeScreen.
///
/// This class ensures that the AttaractionSearchTypeController is created when the
/// AttaractionSearchTypeScreen is first loaded.
class AttaractionSearchTypeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttaractionSearchTypeController());
  }
}
