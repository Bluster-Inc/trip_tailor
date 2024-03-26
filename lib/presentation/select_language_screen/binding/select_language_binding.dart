import 'package:trip_tailor/presentation/select_language_screen/controller/select_language_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectLanguageScreen.
///
/// This class ensures that the SelectLanguageController is created when the
/// SelectLanguageScreen is first loaded.
class SelectLanguageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectLanguageController());
  }
}
