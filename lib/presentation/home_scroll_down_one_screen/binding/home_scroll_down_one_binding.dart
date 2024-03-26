import 'package:trip_tailor/presentation/home_scroll_down_one_screen/controller/home_scroll_down_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeScrollDownOneScreen.
///
/// This class ensures that the HomeScrollDownOneController is created when the
/// HomeScrollDownOneScreen is first loaded.
class HomeScrollDownOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScrollDownOneController());
  }
}
