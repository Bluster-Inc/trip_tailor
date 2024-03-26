import 'package:trip_tailor/presentation/attaraction_select_date_screen/controller/attaraction_select_date_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AttaractionSelectDateScreen.
///
/// This class ensures that the AttaractionSelectDateController is created when the
/// AttaractionSelectDateScreen is first loaded.
class AttaractionSelectDateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttaractionSelectDateController());
  }
}
